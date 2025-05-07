import { useState, useRef, useEffect } from 'react';
// import PackageDetails from './PackageDetails';
import { usePackagesContext } from '../hooks/usePackagesContext';


const PackageForm = () =>{
    const { dispatch } = usePackagesContext()
    const [owner, setOwner] = useState('');
    const [content, setContent] = useState('');
    const [weight, setWeight] = useState('');
    const [error, setError] = useState(null);
    const [emptyFields, setEmptyFields] = useState([]);

    const handleSubmit = async (e) => {
        e.preventDefault()
        const pack = {owner, content, weight}
        const response = await fetch('/api/packages', {
            method: 'POST',
            body: JSON.stringify(pack),
            headers: {
                'Content-Type': 'application/json'
            }
        })
        const json = await response.json()

        if (!response.ok) {
            setError(json.error)
            setEmptyFields(json.emptyFields)
        }
        if (response.ok) {
            setOwner('')
            setContent('')
            setWeight('')
            setError(null)
            setEmptyFields([])
            console.log('New package added')
            dispatch({type: 'CREATE_PACKAGES', payload: json})
        }
    }

    return (
        <form className='create' onSubmit={handleSubmit}>
            <h3>Add a new package</h3>
            
            <label>Package owner</label>
            <input
                type="text"
                onChange={(e) => setOwner(e.target.value)}
                value={owner}
                className={emptyFields.includes('owner') ? 'error' : ''}
            />

            <label>Package content</label>
            <input
                type="text"
                onChange={(e) => setContent(e.target.value)}
                value={content}
                className={emptyFields.includes('content') ? 'error' : ''}
            />

            <label>Package weight</label>
            <input
                type="text"
                onChange={(e) => setWeight(e.target.value)}
                value={weight}
                className={emptyFields.includes('weight') ? 'error' : ''}
            />

            <button>Add package</button>
            {error && <div className="error">{error}</div>}
        </form>
    )
}

export default PackageForm