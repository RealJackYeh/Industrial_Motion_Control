wn=100;
zeta1=0.2; zeta2=0.8; 
tf_2notch_1 = tf([1 0 wn^2],[1 2*zeta1*wn wn^2]);
tf_2notch_2 = tf([1 0 wn^2],[1 2*zeta2*wn wn^2]);
h=bodeoptions;
h.PhaseMatching='on';
h.Title.FontSize = 14;
h.XLabel.FontSize = 14;
h.YLabel.FontSize = 14;
h.TickLabel.FontSize = 14;
bodeplot(tf_2notch_1,'-b',tf_2notch_2,'-.r',{90,110},h);
legend('zeta=0.2','zeta=0.8');
h = findobj(gcf,'type','line');
set(h,'linewidth',2);
grid on;