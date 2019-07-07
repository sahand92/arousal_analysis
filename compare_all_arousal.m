function compare_all_arousal(W,N3,REM,N1,N2)
T_f=load('D:\Desktop\traking\data\fitted_trajectories.mat');




T_wake=T_f.T(T_f.T.state==2,:);
T_N1=T_f.T(T_f.T.state==4,:);
T_N2=T_f.T(T_f.T.state==5,:);
T_N3=T_f.T(T_f.T.state==6,:);
T_REM=T_f.T(T_f.T.state==3,:);


h=iqr(W)*(length(W))^(-1/3);
bin_size=50;
[hist_wake, X]=hist(W(find(diff(W)~=0)),bin_size);
hist_wake=hist_wake./(sum(hist_wake)*(X(2)-X(1)));
          f1=fit(X.',hist_wake.','smoothingspline');
          h1=area(X,f1(X),'FaceColor','blue','FaceAlpha',0.3,'Edgecolor','blue');
          set(h1,'LineWidth',2);
          hleg=legend;
          set(hleg,'visible','off');
          hold on




clear X
clear f
clear h
clear bin_size
h=iqr(N3)*(length(N3))^(-1/3);
bin_size=50;
[hist_N3,X]=hist(N3(find(diff(N3)~=0)),bin_size);
hist_N3=hist_N3./(sum(hist_N3)*(X(2)-X(1)));
 f2=fit(X.',hist_N3.','smoothingspline');
          h2=plot(X,f2(X),'black');
          set(h2,'LineWidth',2);
          hleg=legend;
          set(hleg,'visible','off');
          hold on




clear X
clear f
clear h
clear bin_size
h=iqr(REM)*(length(REM))^(-1/3);
bin_size=50;
[hist_REM,X]=hist(REM(find(diff(REM)~=0)),bin_size);
hist_REM=hist_REM./(sum(hist_REM)*abs((X(2)-X(1))));
 f5=fit(X.',hist_REM.','smoothingspline');
          h5=area(X,f5(X),'FaceColor','red','EdgeColor','red','FaceAlpha',0.3);
          set(h5,'LineWidth',2);
          hleg=legend;
          set(hleg,'visible','off');
          hold on
         
          
clear X
clear h
clear bin_size

h=iqr(N1)*(length(N1))^(-1/3);
bin_size=50;
[hist_N1, X]=hist(N1(find(diff(N1)~=0)),bin_size);
hist_N1=hist_N1./(sum(hist_N1)*(X(2)-X(1)));
          f6=fit(X.',hist_N1.','smoothingspline');
          h6=plot(X,f6(X),'black');
           set(h6,'LineWidth',2);
           set(h6,'LineStyle','-.');

          hleg=legend;
          set(hleg,'visible','off');
          hold on          
          
          clear X
clear f
clear h
clear bin_size
h=iqr(N2)*(length(N2))^(-1/3);
bin_size=50;
[hist_N2,X]=hist(N2(find(diff(N2)~=0)),bin_size);
hist_N2=hist_N2./(sum(hist_N2)*abs((X(2)-X(1))));
 f5=fit(X.',hist_N2.','smoothingspline');
          h7=plot(X,f5(X),'black');
          set(h7,'LineWidth',2);
          set(h7,'LineStyle',':');       
          set(hleg,'visible','off');
          hold on


legend([h1 h5 h6 h7 h2],{'wake','REM','N1','N2','N3'})

set(gca,'fontsize',14);
ylabel('')
xlabel('')
end