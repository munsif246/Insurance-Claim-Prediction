from flask import Flask, request, jsonify
import json
import pickle



def encode_binary(result ,values):
    if result == values[0]:
        result = 0
    else:
        result =1
    return (result)

def cat_varibles(result,values):
    index = values.index(result)
    return (index+1)

gender_list = ['Female', 'Male']
race_list = ['Majority', 'Minority']
ownership_list = ['No','Yes']
children_list = ['No','Yes']
type_list = ['Sedan', 'Sports car']
year_list = ['After 2015', 'Before 2015']
age_list = ['16-25', '26-39', '40-64', '65+']
experience_list =["0-9 Years","10-19 Years","20-29 Years","30+ Years"]
education_list = ["High School","University","other"]
income_list = ["Poverty","Working Class","Middle Class","High Class"]
                
model = pickle.load(open('rf_model.sav', 'rb'))



app = Flask(__name__)

array = {'output': ""}

@app.route('/', methods= ['POST', 'GET'])
def index():
    result =""
    request_data = json.loads(request.data.decode('utf-8'))#extarctin \g value from the app
    annualMilage = request_data['annualMilage']
    creditScore = request_data['creditScore']
    speedViolations = request_data['speedViolations']
    pastAccidents = request_data['pastAccidents']
    
    income = request_data['income']
    income = (cat_varibles(income,income_list))
    
    age = request_data['age']
    age = (cat_varibles(age,age_list))
    
    driving = request_data['driving']
    driving = (cat_varibles(driving,experience_list))
    
    education = request_data['education']
    education = (cat_varibles(education,education_list))
    
    children = request_data['children']
    children = (encode_binary(children,children_list))
    
    gender = request_data['gender']
    gender = (encode_binary(gender,gender_list))
    
    race = request_data['race']
    race = (encode_binary(race,race_list))
    
    ownership = request_data['ownership']
    ownership = (encode_binary(ownership,ownership_list))
    
    year = request_data['year']
    year = (encode_binary(year,year_list))
    
    type2 = request_data['type']
    type2 = (encode_binary(type2,type_list))
    
    vars = [[age,gender,race,driving,education,income,creditScore,ownership,year,
              children,annualMilage,type2,speedViolations,pastAccidents]]
    
    pred = model.predict(vars)
    pred = int(pred[0])
    
    
    if pred == 0:
        result = "Will not claim"
    else:
        result = "Will claim"
    
  
    
    array['annualMilage'] = str(annualMilage)
    array['creditScore'] = str(creditScore)
    array['speedViolations'] = str(speedViolations)
    array['pastAccidents'] = str(pastAccidents)
    array['income'] = str(income)
    array['age'] = str(age)
    array['driving'] = str(driving)
    array['education'] = str(education)
    array['children'] = str(children)
    array['gender'] = str(gender)
    array['race'] = str(race)
    array['year'] = str(year)
    array['ownership'] = str(ownership)
    array['type2'] = str(type2)
    array['result'] = result
    
    return jsonify(array) #jsonifying the array
    
if __name__ == '__main__':
    app.run(host='0.0.0.0' , debug=True)
    




