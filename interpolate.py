import numpy as np
from scipy.interpolate import RegularGridInterpolator


def charge(charge_data, data):
	"""Sort the data file into a form the can be used by scipy.interpolate.RegularGridInterpolator"""

	for i in range(0, lenbeta):
		for ii in range(0, lenalpha):
			for iii in range(0, lenmass):
				mysum = i * lenalpha * lenmass + (lenalpha - ii - 1) * lenmass + iii
				data[i, ii, iii] = charge_data[mysum]
	return data


theory = 'MO'	# set to DEF or MO to specify theory
eos = 'AP3'		# set to EOS name to specify EOS

# Read in the data for the interpolation
directory = '/Users/'  # change directory to data file location
charges = np.genfromtxt(directory + theory + '_' + eos + '_full_data.dat', dtype='Float64')
alpha0grid = np.genfromtxt(directory + theory + '_' + eos + '_alpha0_grid.dat')
beta0grid = np.genfromtxt(directory + theory + '_' + eos + '_beta0_grid.dat')
massgrid = np.genfromtxt(directory + theory + '_' + eos + '_mass_grid.dat')

# Collect values of scalar charges from data file
charge_alpha = charges[:, 0]
charge_beta = charges[:, 1]
charge_k = charges[:, 2]
baryonic_mass = charges[:, 3]

#  Define the lengths of the interpoaltion grids
lenbeta = len(beta0grid)
lenalpha = len(alpha0grid)
lenmass = len(massgrid)

#  Initialize the arrays for the scalar charges
data0 = np.zeros((lenbeta, lenalpha, lenmass))
data1 = np.zeros((lenbeta, lenalpha, lenmass))
data2 = np.zeros((lenbeta, lenalpha, lenmass))
data3 = np.zeros((lenbeta, lenalpha, lenmass))

# Structure the data to be used in RegularGridInterpolator
alphaA_values = charge(charge_alpha, data0)
betaA_values = charge(charge_beta, data1)
kA_values = charge(charge_k, data2)
mbar_values = charge(baryonic_mass, data3)

# Interpolate the data files
alphaAinterp = RegularGridInterpolator((beta0grid, alpha0grid, massgrid), alphaA_values)
betaAinterp = RegularGridInterpolator((beta0grid, alpha0grid, massgrid), betaA_values)
kAinterp = RegularGridInterpolator((beta0grid, alpha0grid, massgrid), kA_values)
mbarinterp = RegularGridInterpolator((beta0grid, alpha0grid, massgrid), mbar_values)
