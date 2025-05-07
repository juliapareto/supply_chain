import { usePackagesContext } from "../hooks/usePackagesContext" 

const PackageDetails = ({ pack }) => {

    const { dispatch } = usePackagesContext()

    const handleClick = async () => {
        const response = await fetch('/api/packages/' + pack._id, {
            method: 'DELETE'
        })
        const json = await response.json()

        if (response.ok) {
            dispatch({type: 'DELETE_PACKAGE', payload: json})
        }
    }

    return (
        <div className="package-details">
            <h4>{pack.owner}</h4>
            <p>- <strong>Content: </strong>{pack.content}</p>
            <p>- <strong>Weight: </strong>{pack.weight}</p>
            <p>- <strong>Tracking since: </strong>{new Date(pack.createdAt).toLocaleString('sv-SE', { hour12: false })}</p>
            <span onClick = {handleClick}> del </span>
        </div>
    )
}

export default PackageDetails