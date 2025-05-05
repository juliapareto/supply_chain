const PackageDetails = ({ pack }) => {
    return (
        <div className="package-details">
            <h4>{pack.owner}</h4>
            <p>- <strong>Content: </strong>{pack.content}</p>
            <p>- <strong>Weight: </strong>{pack.weight}</p>
            <p>- <strong>Tracking since: </strong>{pack.createdAt}</p>
        </div>
    )
}

export default PackageDetails