import { useAuthContext } from './useAuthContext'
import { usePackagesContext } from './usePackagesContext'

export const useLogout = () => {
  const { dispatch } = useAuthContext()
  const { dispatch: packagesDispatch } = usePackagesContext()

  const logout = () => {
    // remove user from storage
    localStorage.removeItem('user')

    // dispatch logout action
    dispatch({ type: 'LOGOUT' })
    packagesDispatch({type: 'SET_PACKAGES', payload: null})
  }

  return { logout }
}