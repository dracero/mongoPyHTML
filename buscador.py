#!/usr/bin/env python
# -*- coding: utf-8 -*-

import atlas
import pandas as pd

class Buscador:

    def __init__(self, email):
        self.atlas = atlas.Atlas(27017)       #Aqui va al direccion del server donde estan las notas
        self.email = email


    def get_resultado(self):
        return 1
