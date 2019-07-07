# arousal_analysis
Matlab code for plotting statistics of arousal state fit parameters

Instructions:
 1. Download data file: https://drive.google.com/file/d/1ZAbE8Z7zAhvpS5tyKAk-2TUgSNeVtEyI/view
 2. Load data in Matlab
 
              T_f=load('D:\Desktop\traking\data\fitted_trajectories.mat');
              T_wake=T_f.T(T_f.T.state==2,:);
              T_N1=T_f.T(T_f.T.state==4,:);
              T_N2=T_f.T(T_f.T.state==5,:);
              T_N3=T_f.T(T_f.T.state==6,:);
              T_REM=T_f.T(T_f.T.state==3,:);
              
3. Run `compare_all_arousal()', using parameters you wish to compare across arousal states as input.
e.g.     
       compare_all_arousal(T_wake.X,T_N3.X,T_REM.X,T_N1.X,T_N2.X);


      

