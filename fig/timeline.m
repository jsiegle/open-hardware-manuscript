% Jon Newman
% A contextual timeline for multichannel open source ephuys projects

% Open source options
sys             = {'AD'         'MB'        'NR'           'AE'        'OE'         'PG'};
time            = [1994         1999        2007           2010        2011         2013];
cost            = [64e3         50e3        9e3            10e3        2600         550 ];  % I'm not sure if these are correct. For instance, AE uses Neuralynx amps right - I would imagine those are not cheap for 128 chans.
chan_atcost     = [64           64          96             128         128          32  ];
max_chan        = [64           64          128            128         512          512 ]; % Technically A/D PG and OE don't have maxs, because they can be daisy-chained. NR is limited by the number of PCI slots available on average PC. Not sure about AE. 

% Other events

% Git introduced, 2005
% Github, 2008
% Intan chips introduced, 2009
% Linux introduced, 1991
% Arduino, 2005
% OSH park accepts outside orders, 2012 (source: @Laen)
% Google opens, 1998
% Creative commons, 2001
% Open source initiative, 1998
% Free software movement started by Richard Stallman, 1983
% Free software foundation formed, 1985

ev      = {'FSF'    'linux'  'Open-source initative' 'Google'       'Creative Commons'      'git'       'Arduino'   'github'    'OSHpark'   'Intan Analog'  'Intan Digital'};
ev_time = [1985     1991     1998                    1998.1            2001                   2005        2005.1        2008        2012        2009        2010];
[ev_time, idx] = sort(ev_time);
ev = ev(idx);


%% Figure
close all
aw = 15;
ah = 2;
tlim = [1993 2014];

% Cost per channel
figure('unit','centimeters','position',[2 2 20 20]);
a1 = axes('unit','centimeters','position',[2 2 aw ah]);
plot(a1, time, cost./chan_atcost,'ko-');
xlabel('Year')
ylabel('Cost/chan.')
set(a1,'tickdir','out','box','off','Ylim',[10 5e3],'Xlim',tlim,'YTick',[10 100 1000 10000],'YScale','log','TickLength',[0.1/aw 1])

% Channel Count
a2 = axes('unit','centimeters','position',[2 2+2+ah aw ah]);
plot(a2, time, max_chan,'ko:');
xlabel('Year')
ylabel('Max chan.')
set(a2,'tickdir','out','box','off','Ylim',[0 600],'Xlim',tlim,'YTick',[0 250 500],'YScale','linear','TickLength',[0.1/aw 1], 'YAxisLocation','right')

% Contextual timeline
a3 = axes('unit','centimeters','position',[2 2+4+2*ah aw ah]);
set(a3,'tickdir','out','box','off','Ylim',[0 600],'Xlim',tlim,'YTick',[],'XTick',ev_time, 'XTickLabel', ev,'TickLength',[0.1/aw 1], 'XAxisLocation','top')

saveas(gcf,'timeline.fig');
export_fig(gcf,'-pdf','-transparent','timeline.pdf')



