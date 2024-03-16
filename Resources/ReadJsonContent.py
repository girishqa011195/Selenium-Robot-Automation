import   json

def read_request_content():
    file=open('D:/robot framework/Files/Request.json','r')
    jsonfile=file.read()
    json_content=json.loads(jsonfile)
    return json_content







