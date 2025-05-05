import { PackagesContext } from "../context/PackageContext";
import { useContext } from "react";

export const usePackagesContext = () => {
    const context = useContext(PackagesContext)
    if (!context) {
        throw Error('usePackagesContext must be used inside a provider')
    }
    
    return context
}