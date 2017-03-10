function utilVal = NICE_edge(refImg, testImg)

        se= strel('arbitrary', [0 1 0; 1 1 1; 0 1 0]);

        REF=edge(refImg,'Canny');
        TEST=edge(testImg,'Canny');
        
        %PERFORM IMAGE DILATION

        IMTEST=imdilate(TEST,se);
        IMREF=imdilate(REF,se);
        
        ES=xor(IMREF,IMTEST);
        imshow(ES);
        utilVal=size(find(ES==1),1)/size(find(IMREF==1),1);

end