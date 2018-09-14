#!/usr/bin/env python
#write the .csv file in mongoAtlas database
# -*- coding: utf-8 -*-
import csv
import pandas as pd
from pymongo import MongoClient
import pprint

#Importar y exportar datos desde el punto de vista del servidor

class Atlas:
    def __init__(self, server):
        self.client = MongoClient(server)

    def buscarPorEmail(self, email):
        db = self.client.coreTec
        elements = db.coreTest
        elemento = elements.find_one({"Email": email})
        if not elemento :
            resultado = 0
        else :
            Parcial1 = elemento["Parcial1"]
            Email = elemento["Email"]
            Parcial1 = elemento["Parcial1"]
            Parcial2  = elemento["Parcial2"]
            Parcial3  = elemento["Parcial3"]
            RecParcial1 = elemento["RecParcial1"]
            RecParcial2 = elemento["RecParcial2"]
            RecParcial3 = elemento["RecParcial3"]
            Rec2Parcial1 = elemento["2RecParcial1"]
            Rec2Parcial2 = elemento["2RecParcial2"]
            resultado = [Email,Parcial1,Parcial2,Parcial3,RecParcial1,RecParcial2,RecParcial3,Rec2Parcial1,Rec2Parcial2]
            print resultado
        return resultado


    def importar(self, archivo):
        db = self.client.coreTec
        db.coreTest.delete_many({})
        with open (archivo) as File:
            reader = csv.DictReader(File)
            header = ["Email", "Parcial1", "Parcial2", "Parcial3","RecParcial1","RecParcial2","RecParcial3","2RecParcial1","2RecParcial2"]
            for each in reader:
                row={}
                for field in header:
                    row[field] = each[field]
                print(row)
                db.coreTest.insert_one(row)

    def exportar(self):
        db = self.client.coreTec
        elements = db.coreTest.find().count()
        fivestarcount = db.coreTest.find()
        each = (list(fivestarcount))
        Email = list()
        Parcial1 = list()
        Parcial2 = list()
        Parcial3 = list()
        RecParcial1 = list()
        RecParcial2 = list()
        RecParcial3 = list()
        Rec2Parcial1 = list()
        Rec2Parcial1 = list()



        header = ["Email", "Parcial1", "Parcial2", "Parcial3","RecParcial1","RecParcial2","RecParcial3","2RecParcial1","2RecParcial2"]

        for k in range(1, elements):
            row = {}
            for field in header:
                row[field] = each[k][field]
            Email.append(row["Email"])
            Parcial1.append(row["Parcial1"])
            Parcial2.append(row["Parcial2"])
            Parcial3.append(row["Parcial3"])
            RecParcial1.append(row["RecParcial1"])
            RecParcial2.append(row["RecParcial2"])
            RecParcial3.append(row["RecParcial3"])
            Rec2Parcial1.append(row["2RecParcial1"])
            Rec2Parcial2.append(row["2RecParcial2"])
        df = pd.DataFrame(data={"Email":Email,"Parcial1":Parcial1,"Parcial2":Parcial2,"Parcial3":Parcial3,"RecParcial1":RecParcial1,"RecParcial2":RecParcial2
                                        ,"RecParcial3":RecParcial3,"2RecParcial1":Rec2Parcial1,"2RecParcial2":Rec2Parcial2})
        df.to_csv("./CSV/in.csv", sep=',', index=False)
        self.client.close
