%% LED, röd
clc;clf;clear

R=1000;
u=[0 1000 1700 1810 1850 1900 2000 2135 2381 2935 3086 3271 3365 3467 3565 3686 3796 3915 4005 ...
   4135 4212 4313 4437 4549 4640 4758 4876 4952 5082 5168 5279 5392 5480 5606 5681 5800 5897 6005]./1000;

i=[0 0 1 6 8 12 19 30 51 100 114 131 140 150 159 170 180 191 200 ...
    212 220 229 240 251 260 271 282 290 302 310 321 331 340 352 359 370 380 390]/1e5;

u_led = u-R*i;


hold on, grid on

plot(u_led,i*1000, '--r')
plot(u,i*1000)
axis([0, 6.5, 0, 4])

xtext='$u$/[V]';
ytext='$i$/[mA]';

xlabel(xtext, 'Interpreter', 'Latex', 'FontSize', 16, 'Color', 'k');
ylabel(ytext, 'Interpreter', 'Latex', 'FontSize', 16, 'Color', 'k');
set(gca,'FontSize',12);

l=legend('Endast LED','LED med $1\,\mathrm{k}\Omega$ i serie');
set(l, 'Interpreter', 'Latex', 'FontSize', 16, 'location', 'southeast');

%title('Ström-spänning karakteri' ,'Interpreter', 'Latex', 'FontSize', 14);

%% LED, röd+blå (gammal)
clc;clf;clear

R=1.00e3;

i=linspace(-0.1, 6, 62)/1000;
i(1)=0;

u=[0000 1648 1866 2008 2133 2247 2362 2472 2569 2643 2714 2782 2841 2904 2963 3024 3081 3137 3195 3250 3305 ...
   3362 3415 3473 3525 3581 3635 3691 3743 3799 3854 3905 3960 4014 4066 4120 4172 4225 4277 4334 4385 ...
   4440 4490 4544 4600 4655 4704 4757 4810 4866 4917 4970 5022 5074 5125 5181 5230 5283 5335 5388 5441 5494]/1000;

hold on, grid on
plot(u,1000*i)


% plot(u-i*R,i)

xtext='$u$/[V]';
ytext='$i$/[mA]';

xlabel(xtext, 'Interpreter', 'Latex', 'FontSize', 14, 'Color', 'k');
ylabel(ytext, 'Interpreter', 'Latex', 'FontSize', 14, 'Color', 'k');
set(gca,'FontSize',12);



%% 
[Vf_r,i0]=ginput(1);

% l=legend('...');
% set(l, 'Interpreter', 'Latex')

%% LED, röd+blå (ny)
clc;clf;clear

R=1.00e3;

i=[0 00 10 25 35 41 53 61 70 80 93 100 111 122 131 141 155 163 171 180 191 ... 
   202 214 220 232 241 253 260 272 283 290 300 310 322 331 340 350 362 371 381]./100e3;

u=[0 1542 1804 1998 2117 2186 2318 2409 2490 2569 2655 2697 2766 2828 2880 2938 3019 3067 3110 ...
   3162 3222 3286 3350 3384 3447 3496 3565 3605 3670 3730 3765 3819 3877 3938 3990 4035 4091 4154 4205 4255]./1e3;



hold on, grid on
plot(u,i)

% plot(u-i*R,i)

xtext='$u$/[V]';
ytext='$i$/[A]';

xlabel(xtext, 'Interpreter', 'Latex', 'FontSize', 14, 'Color', 'k');
ylabel(ytext, 'Interpreter', 'Latex', 'FontSize', 14, 'Color', 'k');
set(gca,'FontSize',12);

%%
clf
hold on, grid on
stop=8;
plot(u(1:stop)-R*i(1:stop),i(1:stop))

% plot(u-i*R,i)

xtext='$u$/[V]';
ytext='$i$/[A]';

xlabel(xtext, 'Interpreter', 'Latex', 'FontSize', 14, 'Color', 'k');
ylabel(ytext, 'Interpreter', 'Latex', 'FontSize', 14, 'Color', 'k');
set(gca,'FontSize',12);































