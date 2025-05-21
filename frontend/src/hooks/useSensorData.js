import { useState, useEffect } from 'react';

export const useSensorData = () => {
  const [latest, setLatest] = useState(null);

  useEffect(() => {
    const fetchSensorData = async () => {
      const res = await fetch('https://api.thingspeak.com/channels/2864984/feeds.json?results=1');
      const json = await res.json();
      const feed = json.feeds[0];

      if (feed) {
        setLatest({
          temperature: parseFloat(feed.field1),
          humidity: parseFloat(feed.field2),
          light: parseFloat(feed.field3),
          flame: parseFloat(feed.field4),
          lat: parseFloat(feed.field5),
          lng: parseFloat(feed.field6),
          time: feed.created_at
        });
      }
    };

    fetchSensorData();
    const interval = setInterval(fetchSensorData, 10000);
    return () => clearInterval(interval);
  }, []);

  return latest;
};
