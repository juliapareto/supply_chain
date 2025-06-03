import { usePackagesContext } from "../hooks/usePackagesContext"
import { useAuthContext } from "../hooks/useAuthContext"
import { useEffect, useRef, useState } from 'react';

import { formatDistanceToNow, format } from 'date-fns'
import { Link, useLocation } from "react-router-dom"
import { useSensorData } from '../hooks/useSensorData'

const PackageDetails = ({ pack }) => {
  const { dispatch } = usePackagesContext()
  const { user } = useAuthContext()
  const location = useLocation()
  const isDetailPage = location.pathname === `/packages/${pack._id}`

  const sensor = useSensorData(pack.ID)
  const [alerts, setAlerts] = useState([])
  const lastAlertRef = useRef({ temp: false, humidity: false, flame: false })

  // ✅ Move this useEffect INSIDE the component
  useEffect(() => {
    if (Notification.permission !== 'granted') {
      Notification.requestPermission()
    }
  }, [])

  useEffect(() => {
    if (!sensor || Notification.permission !== 'granted') return;

    const newAlerts = []
    const tempAlert = sensor.temperature < 10 || sensor.temperature > 35
    const humidityAlert = sensor.humidity > 50
    const flameAlert = sensor.flame === 1

    if (tempAlert && !lastAlertRef.current.temp) {
      newAlerts.push(`🌡️ Temperature out of range: ${sensor.temperature.toFixed(1)}°C`)
      new Notification("Sensor Alert", {
        body: newAlerts.at(-1),
        icon: "/warning-icon.png"
      })
    }

    if (humidityAlert && !lastAlertRef.current.humidity) {
      newAlerts.push(`💧 High humidity: ${sensor.humidity.toFixed(1)}%`)
      new Notification("Sensor Alert", {
        body: newAlerts.at(-1),
        icon: "/warning-icon.png"
      })
    }

    if (flameAlert && !lastAlertRef.current.flame) {
      newAlerts.push(`🔥 Flame detected!`)
      new Notification("Sensor Alert", {
        body: newAlerts.at(-1),
        icon: "/warning-icon.png"
      })
    }

    setAlerts(newAlerts)

    // Update alert state
    lastAlertRef.current = {
      temp: tempAlert,
      humidity: humidityAlert,
      flame: flameAlert
    }

  }, [sensor])

  const handleClick = async () => {
    if (!user) return
    const response = await fetch('/api/packages/' + pack._id, {
      method: 'DELETE',
      headers: { 'Authorization': `Bearer ${user.token}` }
    })
    const json = await response.json()
    if (response.ok) {
      dispatch({ type: 'DELETE_PACKAGE', payload: json })
    }
  }

  return (
    <div className="package-details">
      <h4>{pack.description}</h4>
      <p>- <strong>ID: </strong>{pack.ID}</p>
      <p>- <strong>Weight: </strong>{pack.weight}</p>

      {alerts.length > 0 && (
        <div className="alerts">
          <strong>🚨 Alerts:</strong>
          <ul>
            {alerts.map((msg, idx) => (
              <li key={idx} style={{ color: 'red' }}>{msg}</li>
            ))}
          </ul>
        </div>
      )}

      <p title={format(new Date(pack.createdAt), 'yyyy-MM-dd HH:mm:ss')}>
        - <strong>Tracking since: </strong>
        {formatDistanceToNow(new Date(pack.createdAt), { addSuffix: true })}
      </p>

      {sensor && sensor.time && (
        <p title={format(new Date(sensor.time), 'yyyy-MM-dd HH:mm:ss')}>
          - <strong>Latest data: </strong>
          {formatDistanceToNow(new Date(sensor.time), { addSuffix: true })}
          <br />
        </p>
      )}

      <p>
        🌡️ <em>
          Temperature: {sensor ? sensor.temperature.toFixed(1) + ' °C' : 'Loading...'}
        </em>
      </p>
      <p>
        💧 <em>
          Humidity: {sensor ? sensor.humidity.toFixed(1) + ' %' : 'Loading...'}
        </em>
      </p>
      <p>
        💡 <em>
          Light: {sensor ? (
            sensor.light >= 4 ? '☀️ Bright' :
              sensor.light >= 2 ? '⛅ Moderate' :
                '🌙 Dark'
          ) : 'Loading...'}
        </em>
      </p>
      <p>
        🔥<em>
          Flame: {sensor ? (sensor.flame === 1 ? '🔥 Detected' : '✅ None') : 'Loading...'}
        </em>
      </p>

      {!isDetailPage && (
        <Link to={`/packages/${pack._id}`}>View Details</Link>
      )}
      <span className="material-symbols-outlined" onClick={handleClick}> delete </span>
    </div>
  )
}

export default PackageDetails
