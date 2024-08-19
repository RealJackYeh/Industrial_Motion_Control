wsc=100; J=0.00016; J2=J*2;
Kp_w=J*wsc; Ki_w=Kp_w*wsc/5; 
Kp_w2 = J2*wsc; Ki_w2=Kp_w2*wsc/5;
tf_disturbance1 = tf([1 0],[J Kp_w Ki_w]);
tf_disturbance2 = tf([1 0],[J2 Kp_w2 Ki_w2]);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(tf_disturbance1,'-b',tf_disturbance2,'-.b',{1,10000},h);
legend('Loop1', 'Loop2');
h = findobj(gcf,'type','line');
set(h,'linewidth',2);
grid on;