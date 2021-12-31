
from flask import Flask, render_template 
app = Flask(__name__)

@app.route('/')
def helloworld():
  
    return render_template('index.html')
    #return 


if __name__ == "__main__":
    app.debug=True
    app.run()
    app.run(debug=True)

    
























'''@app.route('/armstrong/<int:n>')
def armstrong(n):
    sum=0
    ordrer=len(str(n))
    copy_n=n

    while(n>0):
        digit=n%10
        sum += digit **ordrer
        n=n//10
    
    if(sum==copy_n):
        print(f"{copy_n} is an aremstrong")
        results= {
            "number" : copy_n,
            "armstrong" : True,
            "srerver ip" : "1222.34.786.500"

        }

    else:
        print(f"{copy_n} is not an aremstrong")
        results= {
            "number" : copy_n,
            "armstrong" : False,
            "srerver ip" : "1222.34.786.500"

        }

    return jsonify(results)  '''
