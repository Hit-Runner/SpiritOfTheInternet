import skimage
from skimage.util import random_noise
from copy import deepcopy
import numpy as np

def gaussian_noise(img:np.ndarray):
    t = deepcopy(img)
    return random_noise(t,'gaussian')

def poisson_noise(img:np.ndarray):
    t = deepcopy(img)
    return random_noise(t,'poisson')

def salt_pepper_noise(img:np.ndarray):
    t = deepcopy(img)
    return random_noise(t,'s&p')

def speckle_noise(img:np.ndarray):
    t = deepcopy(img)
    return random_noise(t,'speckle')