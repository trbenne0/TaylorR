# Student Name & Number: Taylor Bennett - 10449489
#!/bin/bash
#www.ecu.edu.au/service-centres/MACSC/gallery/gallery.php?folder=152        #Website whole code revolves around.

                                                                            #User menu 1-5 selection.
echo "--Please select an option--                                   
1) Download a specific thumbnail.
2) Download ALL thumbnails.
3) Download images in a range from anywhere between 1533-2042     
4) Download x amount of random images
5) EXIT PROGRAM"


if [ -e DSC0images ] ; then
    echo "You images will be stored in the 'DSC0images' folder."           #Firstly, this script will check if there is a folder called
else                                                                       #'DSC0images'. This is the folder the images will be downloaded to.
    mkdir DSC0images                                                       #If there is no file under that name one will be created.
    echo "'DSC0images' folder has been created to store your images."
fi

while true; do                                                             #Here a while loop has been created and will excecute certain
                                                                           #areas depending on users imput.
read -p 'Enter an option: ' choice 
    if [ "$choice" == "1" ]; then                                              
        read -p 'Image number DSC0: ' num                                  #Storing user input in num variable.  
        while(( $num < 1533 | $num > 2042)); do                            #If user input is not in the range of 1533-2042, user will be 
            echo "Number not in range of 1533 and 2042 - Please try again" #promted again.
            read -p 'Image number DSC0: ' num
        done
        wget -q -P DSC0images/ https://secure.ecu.edu.au/service-centres/MACSC/gallery/152/DSC0$num.jpg
        echo 'Downloading DSC0'$num', with the filename DSC0'$num'.jpg, with a file size of KB....File Download Complete.'
        #Once the user input has been accepted, wget will take that input and grab the image directly and store it in the DSC0images folder.
          
    elif [ "$choice" == "2" ]; then 
        echo "Downloading all images from 1533 - 2042" #Using curl to get all images in the range of 1533-2044 and -f to skip images that dont exist.
        curl -O -s -f https://secure.ecu.edu.au/service-centres/MACSC/gallery/152/DSC0[1533-2042].jpg
        echo "Images have been downloaded and stored in the 'DSC0images' folder."
        for jpg in *.jpg; do       #Places all .jpg files into the DSC0images/ folder.
            mv $jpg DSC0images/
        done

    elif [ "$choice" == "3" ]; then 
        echo 'Enter the range of images you wish to download'               #When the user selects option 3 they will be asked to input the range of images
        read -p 'Enter first number. DSC0: ' num1                           #they wish to download, the first number will be stored in 'num1' variable and the second
        while(( $num1 < 1533 | $num1 > 2042)); do                           #will be stored in 'num2'. In both cases if the user does not enter a number in the 1533-
            echo "Number not in range of 1533 and 2042 - Please try again"  #2042 range they will be asked again to enter a number in the correct range.
            read -p 'Enter first number. DSC0: ' num1
        done
        read -p 'Enter second number. DSC0: ' num2
        while(( $num2 < 1533 | $num2 > 2042)); do
            echo "Number not in range of 1533 and 2042 - Please try again"
            read -p 'Enter second number. DSC0: ' num2
        done
        curl -O -s -f https://secure.ecu.edu.au/service-centres/MACSC/gallery/152/DSC0[$num1-$num2].jpg
        echo "Images have been downloaded and stored in the 'DSC0images' folder."
        #Once the user has given the range they wish to download in those variables have been placed in the curl link and will download.
        for jpg in *.jpg; do    #Places all .jpg files into the DSC0images/ folder.
            mv $jpg DSC0images/
            
        done

    elif [ "$choice" == "4" ]; then         #Unable to complete this section.
        echo "UNABLE TO COMPLETE"



    elif [ "$choice" == "5" ]; then         #If the user wishes to exit this program they can select 5 and an exit message will appear.          
        echo "Thank you - See you later!"      
        exit



    else                                                #User can not enter an option outside of the 1-5 range.
        echo "Invalid Entry - Pease Try Again"          #if the user does, they will be prompted again.
    fi     
    done                                                 


exit

