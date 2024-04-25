from flask import Flask, render_template
from database import get_all_plants, get_plant_by_id

app = Flask(__name__)

@app.route('/')
def home():
    plants = get_all_plants()
    return render_template('index.html', plants=plants)
    

@app.route('/plant/<int:id>')
def plant_details(id):
    plant = get_plant_by_id(id)
    return render_template('plant_details.html', plant=plant)




if __name__ == '__main__':
    app.run(debug=True)
