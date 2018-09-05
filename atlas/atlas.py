
from pymongo import MongoClient


#mongodb+srv://diegolanus:<PASSWORD>@house89-eftkw.mongodb.net/test?retryWrites=true


client = MongoClient("mongodb+srv://diegolanus:orobas_otawas89@house89-eftkw.mongodb.net/test?retryWrites=true")
db = client.test
