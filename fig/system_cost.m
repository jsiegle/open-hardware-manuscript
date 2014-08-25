% Plot of cost of commercial and OS options over time

% Open source options
sys             = {'AD'     'MB'     'NR'    'AE'    'OE'};%   'PG'};
time            = [1992     2005     2009    2010    2012];%    2015];
cost            = [64e3     65e3     10e3    10e3    2600];%    550 ];  % I'm not sure if these are correct. For instance, AE uses Neuralynx amps right - I would imagine those are not cheap for 128 chans.
chan_atcost     = [64       64       96      128     128 ];%    32  ];
max_chan        = [64       128      96      128     512 ];%    512 ]; % Technically A/D PG and OE don't have maxs, because they can be daisy-chained. NR is limited by the number of PCI slots available on average PC. Not sure about AE. 

close all
aw = 15;
ah = 2;
figure('unit','centimeters','position',[2 2 20 20]);
a1 = axes('unit','centimeters','position',[2 2 aw ah]);
plot(a1, time, cost./chan_atcost,'ko-');
xlabel('Year')
ylabel('Cost/chan.')
set(a1,'tickdir','out','box','off','Ylim',[10 5e3],'Xlim',[1991 2013],'YTick',[10 100 1000 10000],'YScale','log','TickLength',[0.1/aw 1])


a2 = axes('unit','centimeters','position',[2 2+2+ah aw ah]);
plot(a2, time, max_chan,'ko:');
xlabel('Year')
ylabel('Max chan.')
set(a2,'tickdir','out','box','off','Ylim',[0 600],'Xlim',[1991 2013],'YTick',[0 250 500],'YScale','linear','TickLength',[0.1/aw 1], 'YAxisLocation','right')

export_fig(gcf,'-pdf','-transparent','system_cost.pdf')

%% Commercial options (TODO if we are actually going to pursue this idea)


%% Other events to include on timeline


% Git introduced, 2005
% Github, 2008
% Intan chips introduce, 2009
% Linux introduced, 1991
% Arduino, 2005
% OSH park, (source: @Laen)
