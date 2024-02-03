a=[0.5	1	1	1	1	1	1
0.3	0.9	1	1	1	1	1
0.1	0.9	1	1	1	1	1
0	0.9	1	1	1	1	1
0	0.4	0.7	1	1	1	1
0	0.2	1	1	1	1	1
0	0	0.4	1	1	1	1
0	0	0.3	1	1	1	1
0	0	0.3	0.8	1	1	1
0	0	0.3	0.6	1	1	1
0	0.8	1	1	1	1	1
0	0.4	0.9	1	1	1	1
0	0	0.2	1	1	1	1
0	0	0	0.6	1	1	1
0	0	0	0.6	1	1	1
0	0.4	0.9	1	1	1	1
0	0.3	0.7	1	1	1	1
0	0.2	0.6	1	1	1	1
0	0	0.5	1	1	1	1
0	0	0.3	1	1	1	1]
% the uth largest value of exceedance degree function for four students
% under each linguistic scale, the data is in Table A3
b=[0.7	0.8	0.6	0.9	0.9	0.9	0.9
0.1	0.0	0.2	0.0	0.0	0.0	0.0
0.0	0.0	0.0	0.0	0.0	0.0	0.0
0.1	0.0	0.0	0.0	0.0	0.0	0.0
0.1	0.2	0.2	0.1	0.1	0.1	0.1
0.9	0.4	0.4	0.6	0.9	0.9	0.9
0.0	0.5	0.5	0.2	0.0	0.0	0.0
0.0	0.0	0.0	0.0	0.0	0.0	0.0
0.0	0.0	0.0	0.1	0.0	0.0	0.0
0.1	0.1	0.1	0.1	0.1	0.1	0.1
0.9	0.4	0.4	0.9	0.9	0.9	0.9
0.0	0.4	0.4	0.0	0.0	0.0	0.0
0.0	0.1	0.1	0.0	0.0	0.0	0.0
0.0	0.0	0.0	0.0	0.0	0.0	0.0
0.1	0.1	0.1	0.1	0.1	0.1	0.1
0.9	0.9	0.7	0.9	0.9	0.9	0.9
0.0	0.0	0.0	0.0	0.0	0.0	0.0
0.0	0.0	0.2	0.0	0.0	0.0	0.0
0.0	0.0	0.0	0.0	0.0	0.0	0.0
0.1	0.1	0.1	0.1	0.1	0.1	0.1]
% The weight of the criterion with the uth largest value of exceedance
% degree function, the data is in Table A6
c=a.*b
d1=sum(c(1:5,:),1)
d2=sum(c(6:10,:),1)
d3=sum(c(11:15,:),1)
d4=sum(c(16:20,:),1)
K(1,:)=d1
K(2,:)=d2
K(3,:)=d3
K(4,:)=d4
% The aggregated comprehensive values of students under each linguistic scale.
T(:,1) =K(:,1)
T(:,2) =K(:,2)- K(:,1)
T(:,3) =K(:,3)- K(:,2)
T(:,4) =K(:,4)- K(:,3)
T(:,5) =K(:,5)- K(:,4)
T(:,6) =K(:,6)- K(:,5)
T(:,7) =K(:,7)- K(:,6)
% The comprehensive values of students under each linguistic scale.
Q=T.*[6 5 4 3 2 1 0]
S=sum(Q,2)/6*100
% the score of students in the case study