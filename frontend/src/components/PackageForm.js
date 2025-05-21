import { useState } from 'react';
import { usePackagesContext } from '../hooks/usePackagesContext'
import { useAuthContext } from '../hooks/useAuthContext';


const PackageForm = () =>{
    const { dispatch } = usePackagesContext()
    const { user } = useAuthContext()

    const [ID, setID] = useState('');
    const [description, setDescription] = useState('');
    const [weight, setWeight] = useState('');
    const [error, setError] = useState(null);
    const [emptyFields, setEmptyFields] = useState([]);

    const handleSubmit = async (e) => {
        e.preventDefault()
        if (!user) {
            setError('You must be logged in')
            return
        }
        const pack = {ID, description, weight}
        const response = await fetch('/api/packages', {
            method: 'POST',
            body: JSON.stringify(pack),
            headers: {
                'Content-Type': 'application/json',
                'Authorization': `Bearer ${user.token}`
            }
        })
        const json = await response.json()

        if (!response.ok) {
            setError(json.error)
            setEmptyFields(json.emptyFields)
        }
        if (response.ok) {
            setID('')
            setDescription('')
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
            
            <label>Package ID</label>
            <input
                type="text"
                onChange={(e) => setID(e.target.value)}
                placeholder="ID has to match the channel ID"
                value={ID}
                className={emptyFields.includes('ID') ? 'error' : ''}
            />

            <label>Package description</label>
            <input
                type="text"
                onChange={(e) => setDescription(e.target.value)}
                value={description}
                className={emptyFields.includes('description') ? 'error' : ''}
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