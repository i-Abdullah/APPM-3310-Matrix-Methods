%% info:

%{

This's part of APPM 3310 Matrix methods and applications project. For more
information cehck /Info. This code will try to rank sports team using the
first method described in the research paper (The direct method), foudn in
pp 81. 

%}


%% housekeeping

clear
clc
close all

%% Construct matrix A:

% Matrix A representes the results of interaction between teams, to do
% that,

% 1. ARIZONA CARDINALS
% 2. ATLANTA FALCONS
% 3. BALTIMORE RAVENS
% 4. BUFFALO BILLS
% 5. CAROLINA PANTHERS
% 6. CHICAGO BEARS
% 7. CINCINNATI BENGALS
% 8. CLEVELAND BROWNS
% 9. DALLAS COWBOYS
% 10. Denver Broncos
% 11. Detroit Lions
% 12. Green Bay Packers
% 13. Houston Texans
% 14. Indianapolis Colts
% 15. Jacksonville Jaguars
% 16. Kansas City Chiefs
% 17. San Diego Chargers
% 18. St. Louis Rams
% 19. Miami Dolphins
% 20. Minnesota Vikings
% 21. New England Patriots
% 22. New Orleans Saints
% 23. New York Giants
% 24. New York Jets
% 25. Oakland Raiders
% 26. Philadelphia Eagles
% 27. Pittsburgh Steelers
% 28. San Francisco 49ers
% 29. Seattle Seahawks
% 30. Tampa Bay Buccaneers
% 31. Tennessee Titans
% 32. Washington Redskins


numTeams = 32;
h = @(x) 0.5 + 0.5*sign(x-0.5)*sqrt(abs(2*x - 1) ) ;

[ num txt rw ] = xlsread('NFL2015.xlsx');

games = cellstr(txt(2:end,2:3));

Winners = {games{:,1}}';
Losers = {games{:,2}}';

PointsW = num(:,4); % points scored by winners
PointsL = num(:,5); % points scored by losers


%% store teams

teams = {'Arizona Cardinals';...
'Atlanta Falcons';...
'Baltimore Ravens';...
'Buffalo Bills';...
'Carolina Panthers';...
'Chicago Bears';... 
'Cincinnati Bengals';...  
'Cleveland Browns';...  
'Dallas Cowboys';...
'Denver Broncos';...  
'Detroit Lions';...
'Green Bay Packers';...
'Houston Texans';...
'Indianapolis Colts';...
'Jacksonville Jaguars';...
'Kansas City Chiefs';... 
'San Diego Chargers';...
'St. Louis Rams';...
'Miami Dolphins';...
'Minnesota Vikings';...
'New England Patriots';...
'New Orleans Saints';...
'New York Giants';...
'New York Jets';...
'Oakland Raiders';...
'Philadelphia Eagles';... 
'Pittsburgh Steelers';...
'San Francisco 49ers';...      
'Seattle Seahawks';...       
'Tampa Bay Buccaneers';...
'Tennessee Titans';...      
'Washington Redskins';};



%% code

A = eye(numTeams)*0.5 ; % matrix A, define size
for i = 1:length(games);
   
Winner = Winners{i};
Loser = Losers{i};

% get index of winner, index of loser, (index in matrix A) then determine
% the result of interaction based on function h(x)

% iw = index of winnder
% il = index of loswe :(

switch Winner
    
case teams(1);
    
    iw = 1;
    
case teams(2);
    
    iw = 2;
    
case teams(3);
    
    iw = 3;
    
case teams(4);
    
    iw = 4;
    
case teams(5);
    
    iw = 5;
    
case teams(6);
    
    iw = 6;
    
case teams(7);
    
    iw = 7;
    
    
case teams(8);
    
    iw = 8;
    
case teams(9);
    
    iw = 9;
    
case teams(10);
    
    iw = 10;
    
case teams(11);
    
    iw = 11;
    
case teams(12);
    
    iw = 12;
    
    
case teams(13);
    
    iw = 13;
    
    
case teams(14);
    
    iw = 14;
    
case teams(15);
    
    iw = 15;
    
    
case teams(16);
    
    iw = 16;
    
    
case teams(17);
    
    iw = 17;
    
    
case teams(18);
    
    iw = 18;
    
case teams(19);
    
    iw = 19;
    
case teams(20);
    
    iw = 20;
    
case  teams(21);
    
    iw = 21;
    
case  teams(22);
    
    iw = 22;
    
case  teams(23);
    
    iw = 23;
    
case  teams(24);
    
    iw = 24;

case  teams(25);
    
    iw = 25;
    
case  teams(26);
    
    iw = 26;
        
case teams(27);
    
    iw = 27;
            
case  teams(28);
    
    iw = 28;
                
case  teams(29);
    
    iw = 29;
                    
case  teams(30);
    
    iw = 30;
    
case  teams(31);
    
    iw = 31;
        
case  teams(32);
    
    iw = 32;
    
end;


switch Loser
    
case teams(1);
    
    il = 1;
    
case teams(2);
    
    il = 2;
    
case teams(3);
    
    il = 3;
    
case teams(4);
    
    il = 4;
    
case teams(5);
    
    il = 5;
    
case teams(6);
    
    il = 6;
    
case teams(7);
    
    il = 7;
    
    
case teams(8);
    
    il = 8;
    
case teams(9);
    
    il = 9;
    
case teams(10);
    
    il = 10;
    
case teams(11);
    
    il = 11;
    
case teams(12);
    
    il = 12;
    
    
case teams(13);
    
    il = 13;
    
    
case teams(14);
    
    il = 14;
    
case teams(15);
    
    il = 15;
    
    
case teams(16);
    
    il = 16;
    
    
case teams(17);
    
    il = 17;
    
    
case teams(18);
    
    il = 18;
    
case teams(19);
    
    il = 19;
    
case teams(20);
    
    il = 20;
    
case  teams(21);
    
    il = 21;
    
case  teams(22);
    
    il = 22;
    
case  teams(23);
    
    il = 23;
    
case  teams(24);
    
    il = 24;

case  teams(25);
    
    il = 25;
    
case  teams(26);
    
    il = 26;
        
case teams(27);
    
    il = 27;
            
case  teams(28);
    
    il = 28;
                
case  teams(29);
    
    il = 29;
                    
case  teams(30);
    
    il = 30;
    
case  teams(31);
    
    il = 31;
        
case  teams(32);
    
    il = 32;
    
end;    


A(iw,il) = A(iw,il) + h ( ( PointsW(i) + 1 ) / ( PointsW(i) + PointsL(i) + 2 )  ) ; 
A(il,iw) = A(il,iw) + h ( ( PointsL(i) + 1 ) / ( PointsW(i) + PointsL(i) + 2 )  ) ; 

%A(iw,il) = 1;
%A(il,iw) = 1/2;


end

%% compute ranks:

% get eigenvalues and eigen-vectors

[ eVec eVal ] = eigs(A);

n = 9;
r = ((A^(n))*ones(32,1)) / norm(((A^(n))*ones(32,1)));



for i = 1:numTeams
    
    syms N;
    
    GamesPlayed = length(find ( strcmp(Winners,teams(i)) == 1 ))...
    + length(find ( strcmp(Losers,teams(i)) == 1 )) ;

SeriesSum = 0;

for j = 1:numTeams
    
    SeriesSum = SeriesSum + (A(i,j)*r(j));

end

    Score(i) = (1/GamesPlayed) * SeriesSum  ;

    
    
end

%% find team that should've been first:

fprintf('The SuperBowl winner should have been : \n')
fprintf(char(teams((find(Score==max(Score))))));
fprintf('\n')


%% find the overall ranking:

% for i=1:length(teams);
%     
%     Current = find(Score==max(Score));
%     
%     Standings(i) = Current;
%     
%     Score(Current) = [];
%     
% end

Standings_sort = [ Score ; 1:numTeams ]';

[ a b ] = sort(Standings_sort,'descend');

% sort teams based on new standing:

for i = 1:numTeams
    
    Standings{i} = teams{b(i,1)};
    
end

fprintf('The standings table : \n')

Table = { (1:numTeams)' Standings' } ;

Final = table ( Table{1,1} , Table{1,2} );
Final.Properties.VariableNames = {'Rank','Team'}


