import { usePackagesContext } from "../hooks/usePackagesContext"
import { useAuthContext } from "../hooks/useAuthContext"
import { formatDistanceToNow, format } from 'date-fns'
import { Link, useLocation } from "react-router-dom"


const PackageDetails = ({ pack }) => {

    const { dispatch } = usePackagesContext()
    const { user } = useAuthContext()
    const location = useLocation()
    const isDetailPage = location.pathname === `/packages/${pack._id}`

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

    return (
        <div className="package-details">
            <h4>{pack.description}</h4>
            <p>- <strong>ID: </strong>{pack.ID}</p>
            <p>- <strong>Weight: </strong>{pack.weight}</p>
            <p title={format(new Date(pack.createdAt), 'yyyy-MM-dd HH:mm:ss')}>
                - <strong>Tracking since: </strong>{formatDistanceToNow(new Date(pack.createdAt), {addSuffix: true})}
            </p>
            <p>🌡️ <italic>latest data</italic></p>
            <p>💧 <italic>latest data</italic></p>
            
            {!isDetailPage && (
                <Link to={`/packages/${pack._id}`}>View Details</Link>
            )}
            <span className="material-symbols-outlined" onClick = {handleClick}> delete </span>
        </div>
    )
}

export default PackageDetails