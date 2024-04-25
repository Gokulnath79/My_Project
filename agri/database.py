import mysql.connector

     # Connecting  to MySQL database
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Root@123",
    database="plant_learning_materials"
)

        #  fetch all plants
def get_all_plants():
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM plants")
    plants = cursor.fetchall()
    return plants

       # fetch plant details by id
def get_plant_by_id(plant_id):
    cursor = db.cursor(dictionary=True)
    cursor.execute("SELECT * FROM plants WHERE id = %s", (plant_id,))
    plant = cursor.fetchone()
    return plant
