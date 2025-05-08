import { useEffect } from 'react';
import { usePackagesContext } from '../hooks/usePackagesContext';
import { useAuthContext } from '../hooks/useAuthContext'

import PackageDetails from '../components/PackageDetails'
import PackageForm from '../components/PackageForm'

const Home = () => {
    // const [packages, setPackages] = useState(null)
    const {packages, dispatch} = usePackagesContext()
    const {user} = useAuthContext()

    useEffect(() => {
        const fetchPackages = async () => {
            const response = await fetch('/api/packages', {
                headers: {
                    'Authorization': `Bearer ${user.token}`
                }
            })
            const json = await response.json()
            
            if (response.ok) {
                dispatch({type: 'SET_PACKAGES', payload:json})

            }
        }
        if (user){
            fetchPackages()
        }
    }, [dispatch, user])
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