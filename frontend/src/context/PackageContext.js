import { createContext, useReducer } from 'react'

export const PackagesContext = createContext()

export const packagesReducer = (state, action) => {
    switch (action.type) {
        case 'SET_PACKAGES':
            return{
                packages: action.payload
            }
        case 'CREATE_PACKAGES':
            console.log('CREATE_PACKAGES case')
            return{
                packages: [action.payload, ...state.packages]
            }
        default:
            return state
                
    }
}

export const PackagesContextProvider = ({ children }) => {
    const [state, dispatch] = useReducer(packagesReducer, {
        packages:null
    })

    return (
        <PackagesContext.Provider value={{...state, dispatch}}>
            { children }
        </PackagesContext.Provider>
    )
}