import { useEffect, useState } from 'react';
import {
  LineChart, Line, XAxis, YAxis, Tooltip, CartesianGrid, ResponsiveContainer
} from 'recharts';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet';
import L from 'leaflet';

const SensorData = ({ packID }) => {
  const [data, setData] = useState([]);
  const [error, setError] = useState(null);

  useEffect(() => {
    if (!packID) return;

    const fetchSensorData = async () => {
      try {
        const res = await fetch(`https://api.thingspeak.com/channels/${packID}/feeds.json?results=100`);
        if (!res.ok) {
          throw new Error(`HTTP error! status: ${res.status}, check package ID.`);
        }
        const json = await res.json();

        if (!json.feeds || !Array.isArray(json.feeds) || json.feeds.length === 0) {
          throw new Error('No data received from ThingSpeak.');
        }

        const formatted = json.feeds
          .filter(f => f.field1 && f.field2 && f.field3 && f.field4 && f.field5 && f.field6)
          .map(feed => ({
            time: new Date(feed.created_at).toLocaleTimeString(),
            temperature: parseFloat(feed.field1),
            humidity: parseFloat(feed.field2),
            light: parseFloat(feed.field3),
            flame: parseFloat(feed.field4),
            lat: parseFloat(feed.field5),
            lng: parseFloat(feed.field6)
          }));

        if (formatted.length === 0) {
          throw new Error('Sensor data could not be parsed or is incomplete.');
        }

        setData(formatted);
        setError(null);
      } catch (err) {
        setError(err.message);
        setData([]);
        console.error("Sensor fetch error:", err);
      }
    };

    fetchSensorData();
    const interval = setInterval(fetchSensorData, 10000);
    return () => clearInterval(interval);
  }, [packID]);

  if (error) return <p style={{ color: 'red' }}>❌ {error}</p>;
  if (!data.length) return <p>Loading sensor data...</p>;

  const latest = data[data.length - 1];

  return (
    <div>
      <h2>Sensor Data</h2>

      <h3>🌡️ Temperature</h3>
      <ResponsiveContainer width="100%" height={200}>
        <LineChart data={data}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="time" minTickGap={20} />
          <YAxis />
          <Tooltip />
          <Line type="monotone" dataKey="temperature" stroke="#ff7300" />
        </LineChart>
      </ResponsiveContainer>

      <h3>💧 Humidity</h3>
      <ResponsiveContainer width="100%" height={200}>
        <LineChart data={data}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="time" minTickGap={20} />
          <YAxis />
          <Tooltip />
          <Line type="monotone" dataKey="humidity" stroke="#387908" />
        </LineChart>
      </ResponsiveContainer>

      <h3>💡 Light</h3>
      <ResponsiveContainer width="100%" height={200}>
        <LineChart data={data}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="time" minTickGap={20} />
          <YAxis />
          <Tooltip />
          <Line type="monotone" dataKey="light" stroke="#8884d8" />
        </LineChart>
      </ResponsiveContainer>

      <h3>🔥 Flame</h3>
      <ResponsiveContainer width="100%" height={200}>
        <LineChart data={data}>
          <CartesianGrid strokeDasharray="3 3" />
          <XAxis dataKey="time" minTickGap={20} />
          <YAxis />
          <Tooltip />
          <Line type="monotone" dataKey="flame" stroke="#ff0000" />
        </LineChart>
      </ResponsiveContainer>

      <h3>📍 Latest GPS Location</h3>
      <MapContainer center={[latest.lat, latest.lng]} zoom={15} style={{ height: '300px', width: '100%' }}>
        <TileLayer
          url='https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png'
          attribution='&copy; OpenStreetMap contributors'
        />
        <Marker position={[latest.lat, latest.lng]} icon={L.icon({
          iconUrl: 'https://cdn-icons-png.flaticon.com/512/684/684908.png',
          iconSize: [25, 41],
          iconAnchor: [12, 41]
        })}>
          <Popup>
            Latitude: {latest.lat}<br />
            Longitude: {latest.lng}
          </Popup>
        </Marker>
      </MapContainer>
    </div>
  );
};

export default SensorData;
