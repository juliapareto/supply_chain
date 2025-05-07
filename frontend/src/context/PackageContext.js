import { createContext, useReducer } from 'react'

export const PackagesContext = createContext()

export const packagesReducer = (state, action) => {
    switch (action.type) {
        case 'SET_PACKAGES':
            return{
                packages: action.payload
            }
        case 'CREATE_PACKAGES':
            return{
                packages: [action.payload, ...state.packages]
            }
        case 'DELETE_PACKAGE':
            return{
                packages: state.packages.filter((w) => w._id !== action.payload._id)
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