##########simple for loop########
#!/bin/bash
for i in 1 2 3 4 5 6;
do 
    echo $i
done


#############
forloop.sh
#############


#!/bin/bash
for folder in $(find -type d);
do 
     echo "the folder is $folder"
     if [ -d test ];
     then
            echo "this folder exists"
            echo "removing the folder"
            rm -rf test
      else
            echo "test folder does not exists"
      fi
done
