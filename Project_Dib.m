A = imread('13A = imread('19_30.png');
A2 = imread('20_30.png');

Start1= rgb2gray(A); 
Start2= rgb2gray(A2); 

B = imabsdiff(A,A2)
Im=B;

rmat=Im(:,:,1);
gmat=Im(:,:,2);
bmat=Im(:,:,3);

levellr = 0.3;
levellg = 0.3
levellb = 0.3;

i1 = im2bw(rmat,levellr);
i2 = im2bw(gmat,levellg);
i3 = im2bw(bmat,levellb);
Isum = (i1|i2|i3);

subplot(2,2,1),imshow(i1),title('Red');
subplot(2,2,2),imshow(i2),title('Green');
subplot(2,2,3),imshow(i3),title('Blue');
subplot(2,2,4),imshow(Isum),title('Sum');

figure,imshow(B)

Ifilled = imfill(Isum,'holes');
figure,imshow(Ifilled)

se = strel('disk',1)
Iopenned = imopen(Ifilled,se)
figure,imshow(Iopenned)





Iopenned2 = bwareaopen(Iopenned,5);
figure,imshow(Iopenned2)

se1 =strel('square',20);
dbw2 = imdilate(Iopenned2,se1);
figure,imshow(dbw2)




[L,NumDiffs] = bwlabel(dbw2);
fprintf('The number of Object is %3.0f /n',NumDiffs)
s = regionprops(L,'all');
c = [s.Centroid];



for i = 1 : NumDiffs
    h=rectangle('Position',[c(2*i-1)-15 c(2*i)-15 35 35], 'Curvature',[1 1], 'LineWidth',2,'EdgeColor',[1 1 0]);
end

figure,imshow(A)

hold on;
for i = 1 : NumDiffs
    h=rectangle('Position',[c(2*i-1)-15 c(2*i)-15 35 35], 'Curvature',[1 1], 'LineWidth',2,'EdgeColor',[1 0 0]);
    hold on;
end
if NumDiffs> 0
title(['There are ', num2str(NumDiffs), ' object in different image'])
end
hold off;
figure,subplot(1,2,1),imshow(A),title('Picture 1')
subplot(1,2,2),imshow(A2),title('Picture 2')_20.png');
A2 = imread('14_20.png');

Start1= rgb2gray(A); 
Start2= rgb2gray(A2); 

B = imabsdiff(A,A2)
Im=B;

rmat=Im(:,:,1);
gmat=Im(:,:,2);
bmat=Im(:,:,3);

levellr = 0.3;
levellg = 0.3
levellb = 0.3;

i1 = im2bw(rmat,levellr);
i2 = im2bw(gmat,levellg);
i3 = im2bw(bmat,levellb);
Isum = (i1|i2|i3);

subplot(2,2,1),imshow(i1),title('Red');
subplot(2,2,2),imshow(i2),title('Green');
subplot(2,2,3),imshow(i3),title('Blue');
subplot(2,2,4),imshow(Isum),title('Sum');

figure,imshow(B)

Ifilled = imfill(Isum,'holes');
figure,imshow(Ifilled)

se = strel('disk',1)
Iopenned = imopen(Ifilled,se)
figure,imshow(Iopenned)





Iopenned2 = bwareaopen(Iopenned,5);
figure,imshow(Iopenned2)

se1 =strel('square',20);
dbw2 = imdilate(Iopenned2,se1);
figure,imshow(dbw2)




[L,NumDiffs] = bwlabel(dbw2);
fprintf('The number of Object is %3.0f /n',NumDiffs)
s = regionprops(L,'all');
c = [s.Centroid];



for i = 1 : NumDiffs
    h=rectangle('Position',[c(2*i-1)-15 c(2*i)-15 35 35], 'Curvature',[1 1], 'LineWidth',2,'EdgeColor',[1 1 0]);
end

figure,imshow(A)

hold on;
for i = 1 : NumDiffs
    h=rectangle('Position',[c(2*i-1)-15 c(2*i)-15 35 35], 'Curvature',[1 1], 'LineWidth',2,'EdgeColor',[1 0 0]);
    hold on;
end
if NumDiffs> 0
title(['There are ', num2str(NumDiffs), ' object in different image'])
end
hold off;
figure,subplot(1,2,1),imshow(A),title('Picture 1')
subplot(1,2,2),imshow(A2),title('Picture 2')