import { usePackagesContext } from "../hooks/usePackagesContext"
import { useAuthContext } from "../hooks/useAuthContext"
import { formatDistanceToNow, format } from 'date-fns'
import { Link, useLocation } from "react-router-dom"
import { useSensorData } from '../hooks/useSensorData'



const PackageDetails = ({ pack }) => {

    const { dispatch } = usePackagesContext()
    const { user } = useAuthContext()
    const location = useLocation()
    const isDetailPage = location.pathname === `/packages/${pack._id}`
    
    const sensor = useSensorData()
    // taking recent data

    const handleClick = async () => {
        if (!user){
            return
        }
        const response = await fetch('/api/packages/' + pack._id, {
            method: 'DELETE',
            headers: {
                'Authorization': `Bearer ${user.token}`
            }
        })
        const json = await response.json()

        if (response.ok) {
            dispatch({type: 'DELETE_PACKAGE', payload: json})
        }
    }

    //add channel ID
    return (
        <div className="package-details">
            <h4>{pack.owner}</h4>
            <p>- <strong>Content: </strong>{pack.content}</p>
            <p>- <strong>Weight: </strong>{pack.weight}</p>
            
            <p title={format(new Date(pack.createdAt), 'yyyy-MM-dd HH:mm:ss')}>
                - <strong>Tracking since: </strong>{formatDistanceToNow(new Date(pack.createdAt), {addSuffix: true})}
            </p>

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
                Flame: {sensor ? (sensor.flame === 1 ? '🔥 Detected' : '✅ None' ) : 'Loading...'}
                </em>
            </p>


            {!isDetailPage && (
                <Link to={`/packages/${pack._id}`}>View Details</Link>
            )}
            <span className="material-symbols-outlined" onClick = {handleClick}> delete </span>
        </div>
    )
}

export default PackageDetails

