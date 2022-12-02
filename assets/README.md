# assetsapp

in this project we will learn how to add assets like font and image to the project.

## Step

1. open browser and type http://fonts.google.com and choose one font family then download it.
2. extract that's font 
3. Create folder in root folder of project 
4. Copy font file to it.
5. Open pubspect.yaml and scrool it down 
6. Remove comment in this line, type name of folder stored that asset like :
   this code for image assets
    <b>assets:
        - assets/image/
    </b>
    
    this code for font assets
   <b>fonts:
    - family: Lobster
      fonts:
        - asset: assets/font/Lobster-Regular.ttf</b>
 7. to use the font we must implement it for text tag in code line like (Text("thiscode", style: TextStyle(fontFamily: 'Lobster'))
 8. to use image assets we can use it like  backgroundImage: AssetImage('assets/image/pm.png'),
 
