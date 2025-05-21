import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { useAuthContext } from '../hooks/useAuthContext'
import PackageDetails from '../components/PackageDetails'
import PackageData from '../components/PackageData'

const PackagePage = () => {
  const { id } = useParams();
  const [pack, setPack] = useState(null);
  const [error, setError] = useState(null);
  const {user} = useAuthContext()

  useEffect(() => {
    const fetchPackage = async () => {
      try {
        const response = await fetch(`/api/packages/${id}`, {
            headers: {
                'Authorization': `Bearer ${user.token}`
            }
    });
        const json = await response.json();

        if (!response.ok) throw new Error(json.error || 'Failed to fetch');

        setPack(json);
      } catch (err) {
        setError(err.message);
      }
    };

    fetchPackage();
  }, [id, user]);

  if (error) return <div>Error: {error}</div>;
  if (!pack) return <div>Loading...</div>;

  return (
    <div className="packages">
        <PackageDetails pack = {pack}/>
        <PackageData pack = {pack}/>
    </div>
  );
};

export default PackagePage;
