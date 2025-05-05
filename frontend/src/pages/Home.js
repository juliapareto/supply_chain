import { useEffect, useState } from 'react';
import { usePackagesContext } from '../hooks/usePackagesContext';

import PackageDetails from '../components/PackageDetails'
import PackageForm from '../components/PackageForm'

const Home = () => {
    // const [packages, setPackages] = useState(null)
    const {packages, dispatch} = usePackagesContext()

    useEffect(() => {
        const fetchPackages = async () => {
            const response = await fetch('/api/packages')
            const json = await response.json()
            console.log(json);
            if (response.ok) {
                // setPackages(json)
                dispatch({type: 'SET_PACKAGES', payload:json})

            }
        }
        fetchPackages()
    }, [])
    return (
        <div className="home">
            <div className='packages'>
                {packages && packages.map((pack) => (
                    <PackageDetails key = {pack._id} pack = {pack}/>
                ))}
            </div>
            <PackageForm/>
        </div>
    )
}

export default Home