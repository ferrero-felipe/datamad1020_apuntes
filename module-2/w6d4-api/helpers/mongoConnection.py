from pymongo import MongoClient

client = MongoClient()
db = client.get_database("datamad1020")

def get_company(name):
    curs = db.companies.find({"name":name}, {"name":1,"founded_year":1})
    return list(curs)


def insert_data(collection, data):
    curs = db[collection].insert_one(data)
    return {"_id": curs.inserted_id}