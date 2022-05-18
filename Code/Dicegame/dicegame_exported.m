classdef dicegame_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure             matlab.ui.Figure
        GridLayout           matlab.ui.container.GridLayout
        Player1              matlab.ui.container.Panel
        ROLLButton_online    matlab.ui.control.Button
        Image                matlab.ui.control.Image
        ReadyLabel           matlab.ui.control.Label
        STARTButton          matlab.ui.control.Button
        ScoreValue           matlab.ui.control.Label
        ScoreLabel           matlab.ui.control.Label
        SELECTSwitch         matlab.ui.control.RockerSwitch
        SELECTSwitchLabel    matlab.ui.control.Label
        ROLLButton           matlab.ui.control.Button
        CenterPanel          matlab.ui.container.Panel
        Probabilityofplayer2winningLabel  matlab.ui.control.Label
        prob_value_2         matlab.ui.control.Label
        prob_value           matlab.ui.control.Label
        Probabilityofplayer1winningLabel  matlab.ui.control.Label
        prob                 matlab.ui.control.Image
        SnakeButton          matlab.ui.control.Button
        PickOneLabel         matlab.ui.control.Label
        DogButton            matlab.ui.control.Button
        ONLINEButton         matlab.ui.control.Button
        OFFLINEButton        matlab.ui.control.Button
        help                 matlab.ui.control.Image
        HelpButton           matlab.ui.control.Button
        BattleLog            matlab.ui.control.Table
        BattleLogButton      matlab.ui.control.Button
        WinLabel             matlab.ui.control.Label
        Player2Label         matlab.ui.control.Label
        Player1Label         matlab.ui.control.Label
        Label_2              matlab.ui.control.Label
        Label                matlab.ui.control.Label
        HealthValue          matlab.ui.control.Label
        HealthValue_2        matlab.ui.control.Label
        HealthLabel_2        matlab.ui.control.Label
        HealthLabel          matlab.ui.control.Label
        HealthBar2           matlab.ui.control.Image
        HealthBar1           matlab.ui.control.Image
        Background           matlab.ui.control.Image
        Player2              matlab.ui.container.Panel
        ROLLButton_2_online  matlab.ui.control.Button
        Image2               matlab.ui.control.Image
        ReadyLabel_2         matlab.ui.control.Label
        STARTButton_2        matlab.ui.control.Button
        ScoreValue_2         matlab.ui.control.Label
        ScoreLabel_2         matlab.ui.control.Label
        SELECTSwitch_2Label  matlab.ui.control.Label
        SELECTSwitch_2       matlab.ui.control.RockerSwitch
        ROLLButton_2         matlab.ui.control.Button
        ContextMenu          matlab.ui.container.ContextMenu
        Menu                 matlab.ui.container.Menu
        Menu2                matlab.ui.container.Menu
    end

    % Properties that correspond to apps with auto-reflow
    properties (Access = private)
        onePanelWidth = 576;
        twoPanelWidth = 768;
    end


    

    properties (Access = public)
        channelID = 1670178;
         writeAPIKey='GVV3NUK6VQ1D8WU9';
         readAPIKey='CD8PG73I0LLX8OZ6';
         userAPIKey = '0164YBHQA20B4DS6';   
    end
   

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            set(app.Background, 'Visible', 'off');
            set(app.Player1, 'Visible', 'off');
            set(app.Player2, 'Visible', 'off');
            set(app.BattleLog, 'Visible', 'off');
            set(app.HealthBar1, 'Visible', 'off');
            set(app.HealthBar2, 'Visible', 'off');
            set(app.HealthValue, 'Visible', 'off');
            set(app.HealthValue_2, 'Visible', 'off');
            set(app.HealthLabel, 'Visible', 'off');
            set(app.HealthLabel_2, 'Visible', 'off');
            set(app.Label, 'Visible', 'off');
            set(app.Label_2, 'Visible', 'off');
            set(app.Player1Label, 'Visible', 'off');
            set(app.Player2Label, 'Visible', 'off');
            set(app.PickOneLabel, 'Visible', 'off');
            set(app.prob,'Visible', 'off');
            set(app.prob_value,'Visible', 'off');
            set(app.prob_value_2,'Visible', 'off');
            set(app.Probabilityofplayer2winningLabel,'Visible', 'off');
            set(app.Probabilityofplayer1winningLabel,'Visible', 'off');
            set(app.ONLINEButton,'Visible','off');
            
        end

        % Button pushed function: ROLLButton
        function ROLLButtonPushed(app, event)
            global number1 
            number1 = randi(6);
            
            global number2      
            
            set(app.ROLLButton, 'Enable', 'off');
            app.help.ImageSource = imread("help.png");
 
          % Player 1's Dice Roll
            switch number1
                case 1
                    app.Image.ImageSource = imread("1.jpg");
                case 2
                    app.Image.ImageSource = imread("2.jpg");
                case 3
                    app.Image.ImageSource = imread("3.jpg");
                case 4
                    app.Image.ImageSource = imread("4.jpg");
                case 5
                    app.Image.ImageSource = imread("5.jpg");
                otherwise
                    app.Image.ImageSource = imread("6.jpg");
            end
            
            % Health Bar Display function for Player 1
            function DISPLAYPlayer1HealthBar(health)
                switch health
                    case 0
                        app.HealthBar1.ImageSource = imread("player1hp0.png");
                    case 1
                        app.HealthBar1.ImageSource = imread("player1hp1.png");
                    case 2
                        app.HealthBar1.ImageSource = imread("player1hp2.png");
                    case 3
                        app.HealthBar1.ImageSource = imread("player1hp3.png");
                    case 4
                        app.HealthBar1.ImageSource = imread("player1hp4.png");
                    case 5
                        app.HealthBar1.ImageSource = imread("player1hp5.png");
                    case 6
                        app.HealthBar1.ImageSource = imread("player1hp6.png");
                    case 7
                        app.HealthBar1.ImageSource = imread("player1hp7.png");
                    case 8
                        app.HealthBar1.ImageSource = imread("player1hp8.png");
                    case 9
                        app.HealthBar1.ImageSource = imread("player1hp9.png");
                    otherwise  
                        app.HealthBar1.ImageSource = imread("player1hp10.png");
                end
            end
            


            % Health Bar Display function for Player 2
            function DISPLAYPlayer2HealthBar(health)
                switch health
                    case 0
                        app.HealthBar2.ImageSource = imread("hp0.png");
                    case 1
                        app.HealthBar2.ImageSource = imread("hp1.png");
                    case 2
                        app.HealthBar2.ImageSource = imread("hp2.png");
                    case 3
                        app.HealthBar2.ImageSource = imread("hp3.png");
                    case 4
                        app.HealthBar2.ImageSource = imread("hp4.png");
                    case 5
                        app.HealthBar2.ImageSource = imread("hp5.png");
                    case 6
                        app.HealthBar2.ImageSource = imread("hp6.png");
                    case 7
                        app.HealthBar2.ImageSource = imread("hp7.png");
                    case 8
                        app.HealthBar2.ImageSource = imread("hp8.png");
                    case 9
                        app.HealthBar2.ImageSource = imread("hp9.png");
                    otherwise  
                        app.HealthBar2.ImageSource = imread("hp10.png");
                end
            end

            function DispProb(pro)
                pro2=round(pro*100);
                pro3=100-pro2;
                app.prob_value.Text = string(pro2)+" %";
                app.prob_value_2.Text = string(pro3)+" %";
                xRound = floor(pro2/5)*5;
                switch xRound
                    case 50
                        app.prob.ImageSource = imread("p.001.png");
                    case 55
                        app.prob.ImageSource = imread("p.011.png");
                    case 60
                        app.prob.ImageSource = imread("p.012.png");
                    case 65
                        app.prob.ImageSource = imread("p.013.png");
                    case 70
                        app.prob.ImageSource = imread("p.014.png");
                    case 75
                        app.prob.ImageSource = imread("p.015.png");
                    case 80
                        app.prob.ImageSource = imread("p.016.png");
                    case 85
                        app.prob.ImageSource = imread("p.017.png");
                    case 90
                        app.prob.ImageSource = imread("p.018.png");
                    case 95
                        app.prob.ImageSource = imread("p.019.png");
                    case 100
                        app.prob.ImageSource = imread("p.021.png");
                    case 45
                        app.prob.ImageSource = imread("p.002.png");
                    case 40
                        app.prob.ImageSource = imread("p.003.png");
                    case 35
                        app.prob.ImageSource = imread("p.004.png");
                    case 30
                        app.prob.ImageSource = imread("p.005.png");
                    case 25
                        app.prob.ImageSource = imread("p.006.png");
                    case 20
                        app.prob.ImageSource = imread("p.007.png");
                    case 15
                        app.prob.ImageSource = imread("p.008.png");
                    case 10
                        app.prob.ImageSource = imread("p.009.png");
                    case 5
                        app.prob.ImageSource = imread("p.009.png");
                    case 0
                        app.prob.ImageSource = imread("p.010.png");
                    otherwise  
                        app.prob.ImageSource = imread("p.001.png");
                end
            end
            
            % Play Sound File function
            function PLAYSoundFile(filename)
                [y,Fs] = audioread(filename);
                sound(y,Fs);
                clear y Fs;
            end
            
   % WARNING: IF YOU ALTER THE BELOW CODE, MAKE SURE THAT PLAYER 2'S CODE 
   % IS ALSO CHANGED!

            
            
            if number1 > 0 & number2 > 0
              % Player 1 has the highest roll:
              s = 'ATTACK';
              if strcmp(app.SELECTSwitch.Value,s)
                  m1=0;
              else
                  m1=1;
              end

              if strcmp(app.SELECTSwitch.Value,s)
                  m2=0;
              else
                  m2=1;
              end
              h1=str2double(app.HealthValue.Text);
              h2=str2double(app.HealthValue_2.Text);
              we=webread('http://127.0.0.1:5000/api/v1/winpred','h1',h1,'h2',h2,'m1',m1,'m2',m2);
              DispProb(we);
                if number1 > number2
                    
                    switch app.SELECTSwitch.Value
                      % If Player 1 is attacking:
                        case 'ATTACK'
                            
                            conv2num = str2double(app.HealthValue_2.Text);
                            newValue = conv2num - (number1 - number2);
                            DISPLAYPlayer2HealthBar(newValue);
                            DispProb(we);
                            conv2char = string(newValue);
                            app.HealthValue_2.Text = conv2char;
                            %PLAYSoundFile("hiss.mp3");
                            
                            
                          % To prevent health from dropping below zero: 
                            if str2double(app.HealthValue_2.Text) < 0
                                app.HealthValue_2.Text = "0";
                            end
                           
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{number1 number2}];
                              
                            
                          % Reset board:
                            number1 = 0;
                            number2 = 0; 
                            pause(3);
                            app.Image.ImageSource = imread("blank.jpg");
                            app.Image2.ImageSource = imread("blank.jpg");
                            set(app.ROLLButton, 'Enable', 'on');
                            set(app.ROLLButton_2, 'Enable', 'on');
                            
                      % If Player 1 is healing:
                        case 'HEAL'
                            %PLAYSoundFile("bark.mp3");
                            conv2num = str2double(app.HealthValue.Text);
                            newValue = conv2num + (number1 - number2);
                            DISPLAYPlayer1HealthBar(newValue);
                            DispProb(we);
                            conv2char = string(newValue);
                            app.HealthValue.Text = conv2char;
                            
                          % To prevent health from going above ten:                             
                            if str2double(app.HealthValue.Text) > 10
                                app.HealthValue.Text = "10";
                            end
                          
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{number1 number2}];
                                   
                          
                          % Reset board:
                            number1 = 0;
                            number2 = 0; 
                            pause(3);
                            app.Image.ImageSource = imread("blank.jpg");
                            app.Image2.ImageSource = imread("blank.jpg");
                            set(app.ROLLButton, 'Enable', 'on');
                            set(app.ROLLButton_2, 'Enable', 'on');
                    end
                
              % Player 2 has the highest roll:    
                else
                    switch app.SELECTSwitch_2.Value
                      % If Player 2 is attacking:
                        case 'ATTACK'
                            conv2num = str2double(app.HealthValue.Text);
                            newValue = conv2num - (number2 - number1);
                            DISPLAYPlayer1HealthBar(newValue);
                            DispProb(we);
                            conv2char = string(newValue);
                            app.HealthValue.Text = conv2char;
                            %PLAYSoundFile("whimper.wav");
                            
                          % To prevent health from dropping below zero:
                            if str2double(app.HealthValue.Text) < 0
                                app.HealthValue.Text = "0";
                            end
                            
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{number1 number2}];
                            
                          % Reset board:
                            number1 = 0;
                            number2 = 0;
                            pause(3);
                            app.Image.ImageSource = imread("blank.jpg");
                            app.Image2.ImageSource = imread("blank.jpg");
                            set(app.ROLLButton, 'Enable', 'on');
                            set(app.ROLLButton_2, 'Enable', 'on');
                            
                      % If Player 2 is healing:    
                        case 'HEAL'
                            %PLAYSoundFile("lunge.mp3");
                            conv2num = str2double(app.HealthValue_2.Text);
                            newValue = conv2num + (number2 - number1);
                            DISPLAYPlayer2HealthBar(newValue);
                            DispProb(we);
                            conv2char = string(newValue);
                            app.HealthValue_2.Text = conv2char;
                            
                          % To prevent health from going above ten:
                            if str2double(app.HealthValue_2.Text) > 10
                                app.HealthValue_2.Text = "10";
                            end
                            
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{number1 number2}];
                                
                          % Reset board:
                            number1 = 0;
                            number2 = 0;                                       
                            pause(3);
                            app.Image.ImageSource = imread("blank.jpg");
                            app.Image2.ImageSource = imread("blank.jpg");
                            set(app.ROLLButton, 'Enable', 'on');
                            set(app.ROLLButton_2, 'Enable', 'on');
                    end
                end
            end
            
          % Player 1 loses:
            if str2double(app.HealthValue.Text) <= 0
                app.HealthValue.Text = "0";
                DISPLAYPlayer1HealthBar(0);
                PLAYSoundFile("victory.mp3");
                score2num = str2double(app.ScoreValue_2.Text);
                newScore = score2num + 1;
                score2string = string(newScore);
                app.ScoreValue_2.Text = score2string;
                app.WinLabel.Text(8) = "2";
                set(app.WinLabel, 'Visible', 'on');
               
                
              % Reset Game:
                number1 = 0;
                number2 = 0;                
                set(app.ROLLButton, 'Enable', 'off');
                set(app.ROLLButton_2, 'Enable', 'off');
                pause(3);
                app.Image.ImageSource = imread("blank.jpg");
                app.Image2.ImageSource = imread("blank.jpg");
                DISPLAYPlayer1HealthBar(10);
                DISPLAYPlayer2HealthBar(10);
                app.HealthValue.Text = "10";
                app.HealthValue_2.Text = "10";
                set(app.ROLLButton, 'Enable', 'on');
                set(app.ROLLButton_2, 'Enable', 'on');
                set(app.WinLabel, 'Visible', 'off');
                app.BattleLog.Data = {};
                app.prob_value.Text = "50 %";
                app.prob_value_2.Text = "50 %";
                app.prob.ImageSource = imread("p.001.png");
                
            end
            
          % Player 2 loses:
            if str2double(app.HealthValue_2.Text) <= 0
                app.HealthValue_2.Text = "0";
                DISPLAYPlayer2HealthBar(0);
                PLAYSoundFile("victory.mp3");
                score2num = str2double(app.ScoreValue.Text);
                newScore = score2num + 1;
                score2string = string(newScore);
                app.ScoreValue.Text = score2string;
                app.WinLabel.Text(8) = "1";
                set(app.WinLabel, 'Visible', 'on');
               
                
              % Reset Game:
                number1 = 0;
                number2 = 0;                
                set(app.ROLLButton, 'Enable', 'off');
                set(app.ROLLButton_2, 'Enable', 'off');                                       
                pause(3);
                app.Image.ImageSource = imread("blank.jpg");
                app.Image2.ImageSource = imread("blank.jpg");
                DISPLAYPlayer1HealthBar(10);
                DISPLAYPlayer2HealthBar(10);
                app.HealthValue.Text = "10";
                app.HealthValue_2.Text = "10";
                set(app.ROLLButton, 'Enable', 'on');
                set(app.ROLLButton_2, 'Enable', 'on');
                set(app.WinLabel, 'Visible', 'off');
                app.BattleLog.Data = {};
                app.prob_value.Text = "50 %";
                app.prob_value_2.Text = "50 %";
                app.prob.ImageSource = imread("p.001.png");
                
            end
        end

        % Button pushed function: ROLLButton_2
        function ROLLButton_2Pushed(app, event)
            global number2
            number2 = randi(6);
            
            global number1
            
            
            
            set(app.ROLLButton_2, 'Enable', 'off');
            
            %Player 2's Dice Roll:
            switch number2
                case 1
                    app.Image2.ImageSource = imread("1.jpg");
                case 2
                    app.Image2.ImageSource = imread("2.jpg");
                case 3
                    app.Image2.ImageSource = imread("3.jpg");
                case 4
                    app.Image2.ImageSource = imread("4.jpg");
                case 5
                    app.Image2.ImageSource = imread("5.jpg");
                otherwise
                    app.Image2.ImageSource = imread("6.jpg");
            end
            
            % Health Bar Display function for Player 1
            function DISPLAYPlayer1HealthBar(health)
                switch health
                    case 0
                        app.HealthBar1.ImageSource = imread("player1hp0.png");
                    case 1
                        app.HealthBar1.ImageSource = imread("player1hp1.png");
                    case 2
                        app.HealthBar1.ImageSource = imread("player1hp2.png");
                    case 3
                        app.HealthBar1.ImageSource = imread("player1hp3.png");
                    case 4
                        app.HealthBar1.ImageSource = imread("player1hp4.png");
                    case 5
                        app.HealthBar1.ImageSource = imread("player1hp5.png");
                    case 6
                        app.HealthBar1.ImageSource = imread("player1hp6.png");
                    case 7
                        app.HealthBar1.ImageSource = imread("player1hp7.png");
                    case 8
                        app.HealthBar1.ImageSource = imread("player1hp8.png");
                    case 9
                        app.HealthBar1.ImageSource = imread("player1hp9.png");
                    otherwise  
                        app.HealthBar1.ImageSource = imread("player1hp10.png");
                end
            end
            
            % Health Bar Display function for Player 2
            function DISPLAYPlayer2HealthBar(health)
                switch health
                    case 0
                        app.HealthBar2.ImageSource = imread("hp0.png");
                    case 1
                        app.HealthBar2.ImageSource = imread("hp1.png");
                    case 2
                        app.HealthBar2.ImageSource = imread("hp2.png");
                    case 3
                        app.HealthBar2.ImageSource = imread("hp3.png");
                    case 4
                        app.HealthBar2.ImageSource = imread("hp4.png");
                    case 5
                        app.HealthBar2.ImageSource = imread("hp5.png");
                    case 6
                        app.HealthBar2.ImageSource = imread("hp6.png");
                    case 7
                        app.HealthBar2.ImageSource = imread("hp7.png");
                    case 8
                        app.HealthBar2.ImageSource = imread("hp8.png");
                    case 9
                        app.HealthBar2.ImageSource = imread("hp9.png");
                    otherwise  
                        app.HealthBar2.ImageSource = imread("hp10.png");
                end
            end

            function DispProb(pro)
                pro2=round(pro*100);
                pro3=100-pro2;
                app.prob_value.Text = string(pro2)+" %";
                app.prob_value_2.Text = string(pro3)+" %";                
                xRound = floor(pro2/5)*5;
                switch xRound
                    case 50
                        app.prob.ImageSource = imread("p.001.png");
                    case 55
                        app.prob.ImageSource = imread("p.011.png");
                    case 60
                        app.prob.ImageSource = imread("p.012.png");
                    case 65
                        app.prob.ImageSource = imread("p.013.png");
                    case 70
                        app.prob.ImageSource = imread("p.014.png");
                    case 75
                        app.prob.ImageSource = imread("p.015.png");
                    case 80
                        app.prob.ImageSource = imread("p.016.png");
                    case 85
                        app.prob.ImageSource = imread("p.017.png");
                    case 90
                        app.prob.ImageSource = imread("p.018.png");
                    case 95
                        app.prob.ImageSource = imread("p.019.png");
                    case 100
                        app.prob.ImageSource = imread("p.021.png");
                    case 45
                        app.prob.ImageSource = imread("p.002.png");
                    case 40
                        app.prob.ImageSource = imread("p.003.png");
                    case 35
                        app.prob.ImageSource = imread("p.004.png");
                    case 30
                        app.prob.ImageSource = imread("p.005.png");
                    case 25
                        app.prob.ImageSource = imread("p.006.png");
                    case 20
                        app.prob.ImageSource = imread("p.007.png");
                    case 15
                        app.prob.ImageSource = imread("p.008.png");
                    case 10
                        app.prob.ImageSource = imread("p.009.png");
                    case 5
                        app.prob.ImageSource = imread("p.009.png");
                    case 0
                        app.prob.ImageSource = imread("p.010.png");
                    otherwise  
                        app.prob.ImageSource = imread("p.001.png");
                end
            end
            
            % Play Sound File function
            function PLAYSoundFile(filename)
                [y,Fs] = audioread(filename);
                sound(y,Fs);
                clear y Fs;
            end
            
   %  The rest of the code is the same as Player 1's, so that way it doesn't
   %  matter which person rolls first.
   
   %  WARNING: IF YOU ALTER THE BELOW CODE, MAKE SURE THAT PLAYER 1'S CODE 
   %  IS ALSO CHANGED!
            
            if number1 > 0 & number2 > 0
              s = 'ATTACK';
              if strcmp(app.SELECTSwitch.Value,s)
                  m1=0;
              else
                  m1=1;
              end

              if strcmp(app.SELECTSwitch.Value,s)
                  m2=0;
              else
                  m2=1;
              end
              h1=str2double(app.HealthValue.Text);
              h2=str2double(app.HealthValue_2.Text);
              we=webread('http://127.0.0.1:5000/api/v1/winpred','h1',h1,'h2',h2,'m1',m1,'m2',m2);
              DispProb(we);
              % Player 1 has the highest roll:
                if number1 > number2
                    switch app.SELECTSwitch.Value
                      % If Player 1 is attacking:
                        case 'ATTACK'
                            conv2num = str2double(app.HealthValue_2.Text);
                            newValue = conv2num - (number1 - number2);
                            DISPLAYPlayer2HealthBar(newValue);
                            DispProb(we);
                            conv2char = string(newValue);
                            app.HealthValue_2.Text = conv2char;
                            %PLAYSoundFile("hiss.mp3");
                            
                          % To prevent health from dropping below zero: 
                            if str2double(app.HealthValue_2.Text) < 0
                                app.HealthValue_2.Text = "0";
                            end
                           
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{number1 number2}];
           
                            
                          % Reset board:
                            number1 = 0;
                            number2 = 0; 
                            pause(3);
                            app.Image.ImageSource = imread("blank.jpg");
                            app.Image2.ImageSource = imread("blank.jpg");
                            set(app.ROLLButton, 'Enable', 'on');
                            set(app.ROLLButton_2, 'Enable', 'on');
                            
                      % If Player 1 is healing:
                        case 'HEAL'
                            %PLAYSoundFile("bark.mp3");
                            conv2num = str2double(app.HealthValue.Text);
                            newValue = conv2num + (number1 - number2);
                            DISPLAYPlayer1HealthBar(newValue);
                            DispProb(we);
                            conv2char = string(newValue);
                            app.HealthValue.Text = conv2char;
                            
                          % To prevent health from going above ten:                             
                            if str2double(app.HealthValue.Text) > 10
                                app.HealthValue.Text = "10";
                            end
                         
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{number1 number2}];
                            
                         
                          % Reset board:
                            number1 = 0;
                            number2 = 0; 
                            pause(3);
                            app.Image.ImageSource = imread("blank.jpg");
                            app.Image2.ImageSource = imread("blank.jpg");
                            set(app.ROLLButton, 'Enable', 'on');
                            set(app.ROLLButton_2, 'Enable', 'on');
                    end
                
              % Player 2 has the highest roll:    
                else
                    switch app.SELECTSwitch_2.Value
                      % If Player 2 is attacking:
                        case 'ATTACK'
                            conv2num = str2double(app.HealthValue.Text);
                            newValue = conv2num - (number2 - number1);
                            DISPLAYPlayer1HealthBar(newValue);
                            DispProb(we);
                            conv2char = string(newValue);
                            app.HealthValue.Text = conv2char;
                            %PLAYSoundFile("whimper.wav");
                            
                          % To prevent health from dropping below zero:
                            if str2double(app.HealthValue.Text) < 0
                                app.HealthValue.Text = "0";
                            end
                            
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{number1 number2}];
                            
                           
                          % Reset board:
                            number1 = 0;
                            number2 = 0;
                            pause(3);
                            app.Image.ImageSource = imread("blank.jpg");
                            app.Image2.ImageSource = imread("blank.jpg");
                            set(app.ROLLButton, 'Enable', 'on');
                            set(app.ROLLButton_2, 'Enable', 'on');
                            
                      % If Player 2 is healing:    
                        case 'HEAL'
                            %PLAYSoundFile("lunge.mp3");
                            conv2num = str2double(app.HealthValue_2.Text);
                            newValue = conv2num + (number2 - number1);
                            DISPLAYPlayer2HealthBar(newValue);
                            DispProb(we);
                            conv2char = string(newValue);
                            app.HealthValue_2.Text = conv2char;
                            
                          % To prevent health from going above ten:
                            if str2double(app.HealthValue_2.Text) > 10
                                app.HealthValue_2.Text = "10";
                            end
                            
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{number1 number2}];
                            
                          
                          % Reset board:
                            number1 = 0;
                            number2 = 0;                                       
                            pause(3);
                            app.Image.ImageSource = imread("blank.jpg");
                            app.Image2.ImageSource = imread("blank.jpg");
                            set(app.ROLLButton, 'Enable', 'on');
                            set(app.ROLLButton_2, 'Enable', 'on');
                    end
                end
            end
            
          % Player 1 loses:
            if str2double(app.HealthValue.Text) <= 0
                app.HealthValue.Text = "0";
                DISPLAYPlayer1HealthBar(0);
                %PLAYSoundFile("victory.mp3");
                score2num = str2double(app.ScoreValue_2.Text);
                newScore = score2num + 1;
                score2string = string(newScore);
                app.ScoreValue_2.Text = score2string;
                app.WinLabel.Text(8) = "2";
                set(app.WinLabel, 'Visible', 'on');
                app.prob.ImageSource = imread("p.010.png");
                app.prob_value.Text="0 %";
                app.prob_value_2.Text="100 %";
                
              % Reset Game:
                number1 = 0;
                number2 = 0;                
                set(app.ROLLButton, 'Enable', 'off');
                set(app.ROLLButton_2, 'Enable', 'off');
                pause(5);
                app.Image.ImageSource = imread("blank.jpg");
                app.Image2.ImageSource = imread("blank.jpg");
                DISPLAYPlayer1HealthBar(10);
                DISPLAYPlayer2HealthBar(10);
                app.HealthValue.Text = "10";
                app.HealthValue_2.Text = "10";
                app.prob.ImageSource = imread("p.001.png");
                set(app.ROLLButton, 'Enable', 'on');
                set(app.ROLLButton_2, 'Enable', 'on');
                set(app.WinLabel, 'Visible', 'off');
                app.BattleLog.Data = {};
                app.prob_value.Text = "50 %";
                app.prob_value_2.Text = "50 %";
                
            end
            
          % Player 2 loses:
            if str2double(app.HealthValue_2.Text) <= 0
                app.HealthValue_2.Text = "0";
                DISPLAYPlayer2HealthBar(0);
                %PLAYSoundFile("victory.mp3");
                score2num = str2double(app.ScoreValue.Text);
                newScore = score2num + 1;
                score2string = string(newScore);
                app.ScoreValue.Text = score2string;
                app.WinLabel.Text(8) = "1";
                set(app.WinLabel, 'Visible', 'on');
                app.prob.ImageSource = imread("p.021.png");
                app.prob_value.Text="100 %";
                app.prob_value_2.Text="0 %";
                
              % Reset Game:
                number1 = 0;
                number2 = 0;                
                set(app.ROLLButton, 'Enable', 'off');
                set(app.ROLLButton_2, 'Enable', 'off');                                       
                pause(5);
                app.Image.ImageSource = imread("blank.jpg");
                app.Image2.ImageSource = imread("blank.jpg");
                DISPLAYPlayer1HealthBar(10);
                DISPLAYPlayer2HealthBar(10);
                app.HealthValue.Text = "10";
                app.HealthValue_2.Text = "10";
                set(app.ROLLButton, 'Enable', 'on');
                set(app.ROLLButton_2, 'Enable', 'on');
                set(app.WinLabel, 'Visible', 'off');
                app.BattleLog.Data = {};
                app.prob.ImageSource = imread("p.001.png");
                app.prob_value.Text = "50 %";
                app.prob_value_2.Text = "50 %";
                
            end
        end

        % Button pushed function: STARTButton
        function STARTButtonPushed(app, event)
            set(app.STARTButton, 'Enable', 'off');
            
            if app.STARTButton.Enable == 'off'
                set(app.STARTButton, 'Visible', 'off');
                set(app.STARTButton_2, 'Visible', 'off');
                set(app.ReadyLabel, 'Visible', 'off');
                set(app.ReadyLabel_2, 'Visible', 'off');
                
                set(app.ROLLButton, 'Visible', 'on');
                set(app.SELECTSwitch, 'Visible', 'on');
                set(app.SELECTSwitchLabel, 'Visible', 'on');
                set(app.HealthValue, 'Visible', 'on');
                set(app.Player1Label, 'Visible', 'on');
                set(app.Player2Label, 'Visible', 'on');
                                
                set(app.ROLLButton_2, 'Visible', 'on');
                set(app.SELECTSwitch_2, 'Visible', 'on');
                set(app.SELECTSwitch_2Label, 'Visible', 'on');
                set(app.HealthValue_2, 'Visible', 'on');
                
                app.Image.ImageSource = imread("blank.jpg");
                app.Image2.ImageSource = imread("blank.jpg");
                set(app.Image, 'Visible', 'on');
                set(app.Image2, 'Visible', 'on');
            end
        end

        % Button pushed function: STARTButton_2
        function STARTButton_2Pushed(app, event)
            set(app.STARTButton_2, 'Enable', 'off');
          
            if app.STARTButton_2.Enable == 'off'
                set(app.STARTButton, 'Visible', 'off');
                set(app.STARTButton_2, 'Visible', 'off');
                set(app.ReadyLabel, 'Visible', 'off');
                set(app.ReadyLabel_2, 'Visible', 'off');
                
                set(app.ROLLButton, 'Visible', 'on');
                set(app.SELECTSwitch, 'Visible', 'on');
                set(app.SELECTSwitchLabel, 'Visible', 'on');
                set(app.HealthValue, 'Visible', 'on');
                set(app.HealthLabel, 'Visible', 'on');              
                set(app.ScoreValue, 'Visible', 'on');
                set(app.ScoreLabel, 'Visible', 'on');
                                
                set(app.ROLLButton_2, 'Visible', 'on');
                set(app.SELECTSwitch_2, 'Visible', 'on');
                set(app.SELECTSwitch_2Label, 'Visible', 'on');
                set(app.HealthValue_2, 'Visible', 'on');
                set(app.HealthLabel_2, 'Visible', 'on');                
                set(app.ScoreValue_2, 'Visible', 'on');
                set(app.ScoreLabel_2, 'Visible', 'on');
                
                app.Image.ImageSource = imread("blank.jpg");
                app.Image2.ImageSource = imread("blank.jpg");
                set(app.Image, 'Visible', 'on');
                set(app.Image2, 'Visible', 'on');
            end
        end

        % Button pushed function: BattleLogButton
        function BattleLogButtonPushed(app, event)
            if app.BattleLog.Visible == false
                set(app.BattleLog, 'Visible', 'on');

            else
                set(app.BattleLog, 'Visible', 'off');
            end
        end

        % Button pushed function: HelpButton
        function HelpButtonPushed(app, event)
            if app.help.Visible == false
                set(app.help, 'Visible', 'on');
            else
                set(app.help, 'Visible', 'off');
            end
        end

        % Button pushed function: ONLINEButton
        function ONLINEButtonPushed(app, event)
            set(app.OFFLINEButton, 'Visible', 'off');
            set(app.ONLINEButton, 'Visible', 'off');
            set(app.DogButton,'Visible','on');
            set(app.SnakeButton,'Visible','on');
            set(app.PickOneLabel,'Visible','on');
            set(app.ROLLButton,'Enable','off');
            set(app.ROLLButton_2,'Enable','off');
            set(app.ROLLButton,'Visible','off');
            app.help.ImageSource = imread("help.png");
            set(app.ROLLButton_2,'Visible','off');
            
            
        end

        % Button pushed function: OFFLINEButton
        function OFFLINEButtonPushed(app, event)
            set(app.Background, 'Visible', 'on');
            set(app.Player1, 'Visible', 'on');
            set(app.Player2, 'Visible', 'on');
            set(app.Player1Label, 'Visible', 'on');
            set(app.Player2Label, 'Visible', 'on');
            set(app.HealthBar1, 'Visible', 'on');
            set(app.HealthBar2, 'Visible', 'on');
            set(app.HealthValue, 'Visible', 'on');
            set(app.HealthValue_2, 'Visible', 'on');
            set(app.HealthLabel, 'Visible', 'on');
            set(app.HealthLabel_2, 'Visible', 'on');
            set(app.OFFLINEButton, 'Visible', 'off');
            set(app.ONLINEButton, 'Visible', 'off');
            app.help.ImageSource = imread("help.png");
            set(app.prob,'Visible', 'on');
            set(app.prob_value,'Visible', 'on');
            set(app.prob_value_2,'Visible', 'on');
            set(app.Probabilityofplayer2winningLabel,'Visible', 'on');
            set(app.Probabilityofplayer1winningLabel,'Visible', 'on');
            
        end

        % Button pushed function: DogButton
        function DogButtonPushed(app, event)
             
            set(app.Background, 'Visible', 'on');
            set(app.Player1, 'Visible', 'on');
            set(app.Player2, 'Visible', 'on');
            set(app.HealthBar1, 'Visible', 'on');
            set(app.HealthBar2, 'Visible', 'on');
            set(app.HealthValue, 'Visible', 'on');
            set(app.HealthValue_2, 'Visible', 'on');
            set(app.HealthLabel, 'Visible', 'on');
            set(app.HealthLabel_2, 'Visible', 'on');
            set(app.Label, 'Visible', 'on');
            set(app.Label_2, 'Visible', 'on');

            set(app.DogButton,'Visible','off');
            set(app.SnakeButton,'Visible','off');
            set(app.PickOneLabel,'Visible','off');
            set(app.ReadyLabel_2,'Visible','off');
            set(app.STARTButton_2,'Visible','off');
            set(app.STARTButton_2,'Enable','off');
            set(app.SELECTSwitch_2,'Visible','off');
            set(app.ROLLButton_2,'Visible','off');
            set(app.ROLLButton_2,'Enable','off');
            set(app.ROLLButton,'Visible','off');
            set(app.ROLLButton,'Enable','off');
            set(app.SELECTSwitch_2,'Enable','off');
            set(app.ROLLButton_online,'Enable','on');
            set(app.ROLLButton_online,'Visible','on');
            
            set(app.prob,'Visible', 'on');
            set(app.prob_value,'Visible', 'on');
            set(app.prob_value_2,'Visible', 'on');
            set(app.Probabilityofplayer2winningLabel,'Visible', 'on');
            set(app.Probabilityofplayer1winningLabel,'Visible', 'on');

        end

        % Button pushed function: SnakeButton
        function SnakeButtonPushed(app, event)
            
            set(app.Background, 'Visible', 'on');
            set(app.Player1, 'Visible', 'on');
            set(app.Player2, 'Visible', 'on');
            set(app.HealthBar1, 'Visible', 'on');
            set(app.HealthBar2, 'Visible', 'on');
            set(app.HealthValue, 'Visible', 'on');
            set(app.HealthValue_2, 'Visible', 'on');
            set(app.HealthLabel, 'Visible', 'on');
            set(app.HealthLabel_2, 'Visible', 'on');
            set(app.Label_2, 'Visible', 'on');
            set(app.Label, 'Visible', 'on');

            set(app.DogButton,'Visible','off');
            set(app.SnakeButton,'Visible','off');
            set(app.PickOneLabel,'Visible','off');
            set(app.ReadyLabel_2,'Visible','off');
            set(app.STARTButton,'Visible','off');
            set(app.STARTButton,'Enable','off');
            set(app.SELECTSwitch,'Visible','off');
            set(app.ROLLButton,'Visible','off');
            set(app.ROLLButton_2,'Visible','off');
            set(app.ROLLButton_2,'Enable','off');
            set(app.ROLLButton,'Enable','off');
            set(app.SELECTSwitch,'Enable','off');
            set(app.Image,'Visible','off');
            
            set(app.ROLLButton_2_online,'Enable','on');
            set(app.ROLLButton_2_online,'Visible','on');

            set(app.prob,'Visible', 'on');
            set(app.prob_value,'Visible', 'on');
            set(app.prob_value_2,'Visible', 'on');
            set(app.Probabilityofplayer2winningLabel,'Visible', 'on');
            set(app.Probabilityofplayer1winningLabel,'Visible', 'on');
            
        end

        % Button pushed function: ROLLButton_online
        function ROLLButton_onlinePushed(app, event)
        

            app.channelID = 1670178;
            app.writeAPIKey='GVV3NUK6VQ1D8WU9';
            app.readAPIKey='CD8PG73I0LLX8OZ6';
            app.userAPIKey = '0164YBHQA20B4DS6'; 
            url = sprintf('https://api.thingspeak.com/channels/%s/feeds.json?api_key=%s', num2str(app.channelID), app.userAPIKey);

            
            global n1 
            global n2
           
                    n1 = randi(6);
                    pause(15);
                    thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [1], 'Values', n1);
                    pause(15);
                    n2 = thingSpeakRead(app.channelID, 'readKey', app.readAPIKey, 'Fields', [2],'OutputFormat','matrix');
                    set(app.ROLLButton_online, 'Enable', 'on');
                    
        
                  % Player 1's Dice Roll
                    switch n1
                        case 1
                            app.Image.ImageSource = imread("1.jpg");
                        case 2
                            app.Image.ImageSource = imread("2.jpg");
                        case 3
                            app.Image.ImageSource = imread("3.jpg");
                        case 4
                            app.Image.ImageSource = imread("4.jpg");
                        case 5
                            app.Image.ImageSource = imread("5.jpg");
                        otherwise
                            app.Image.ImageSource = imread("6.jpg");
                    end
                    
                    % Health Bar Display function for Player 1
                    function DISPLAYPlayer1HealthBar(health)
                        switch health
                            case 0
                                app.HealthBar1.ImageSource = imread("player1hp0.png");
                            case 1
                                app.HealthBar1.ImageSource = imread("player1hp1.png");
                            case 2
                                app.HealthBar1.ImageSource = imread("player1hp2.png");
                            case 3
                                app.HealthBar1.ImageSource = imread("player1hp3.png");
                            case 4
                                app.HealthBar1.ImageSource = imread("player1hp4.png");
                            case 5
                                app.HealthBar1.ImageSource = imread("player1hp5.png");
                            case 6
                                app.HealthBar1.ImageSource = imread("player1hp6.png");
                            case 7
                                app.HealthBar1.ImageSource = imread("player1hp7.png");
                            case 8
                                app.HealthBar1.ImageSource = imread("player1hp8.png");
                            case 9
                                app.HealthBar1.ImageSource = imread("player1hp9.png");
                            otherwise  
                                app.HealthBar1.ImageSource = imread("player1hp10.png");
                        end
                    end

                    function DISPLAYPlayer2HealthBar(health)
                        switch health
                            case 0
                                app.HealthBar2.ImageSource = imread("hp0.png");
                            case 1
                                app.HealthBar2.ImageSource = imread("hp1.png");
                            case 2
                                app.HealthBar2.ImageSource = imread("hp2.png");
                            case 3
                                app.HealthBar2.ImageSource = imread("hp3.png");
                            case 4
                                app.HealthBar2.ImageSource = imread("hp4.png");
                            case 5
                                app.HealthBar2.ImageSource = imread("hp5.png");
                            case 6
                                app.HealthBar2.ImageSource = imread("hp6.png");
                            case 7
                                app.HealthBar2.ImageSource = imread("hp7.png");
                            case 8
                                app.HealthBar2.ImageSource = imread("hp8.png");
                            case 9
                                app.HealthBar2.ImageSource = imread("hp9.png");
                            otherwise  
                                app.HealthBar2.ImageSource = imread("hp10.png");
                        end
                    end

                    function DispProb(pro)
                        pro2=round(pro*100);
                        pro3=100-pro2;
                        app.prob_value.Text = string(pro2)+" %";
                        app.prob_value_2.Text = string(pro3)+" %";
                        xRound = floor(pro2/5)*5;
                        switch xRound
                            case 50
                                app.prob.ImageSource = imread("p.001.png");
                            case 55
                                app.prob.ImageSource = imread("p.011.png");
                            case 60
                                app.prob.ImageSource = imread("p.012.png");
                            case 65
                                app.prob.ImageSource = imread("p.013.png");
                            case 70
                                app.prob.ImageSource = imread("p.014.png");
                            case 75
                                app.prob.ImageSource = imread("p.015.png");
                            case 80
                                app.prob.ImageSource = imread("p.016.png");
                            case 85
                                app.prob.ImageSource = imread("p.017.png");
                            case 90
                                app.prob.ImageSource = imread("p.018.png");
                            case 95
                                app.prob.ImageSource = imread("p.019.png");
                            case 100
                                app.prob.ImageSource = imread("p.021.png");
                            case 45
                                app.prob.ImageSource = imread("p.002.png");
                            case 40
                                app.prob.ImageSource = imread("p.003.png");
                            case 35
                                app.prob.ImageSource = imread("p.004.png");
                            case 30
                                app.prob.ImageSource = imread("p.005.png");
                            case 25
                                app.prob.ImageSource = imread("p.006.png");
                            case 20
                                app.prob.ImageSource = imread("p.007.png");
                            case 15
                                app.prob.ImageSource = imread("p.008.png");
                            case 10
                                app.prob.ImageSource = imread("p.009.png");
                            case 5
                                app.prob.ImageSource = imread("p.009.png");
                            case 0
                                app.prob.ImageSource = imread("p.010.png");
                            otherwise  
                                app.prob.ImageSource = imread("p.001.png");
                        end
                    end

                    
        
                    function PLAYSoundFile(filename)
                        [y,Fs] = audioread(filename);
                        sound(y,Fs);
                        clear y Fs;
                    end

                    
                    if n1 > 0

                        s = 'ATTACK';
                        if strcmp(app.SELECTSwitch.Value,s)
                            m1=0;
                        else
                            m1=1;
                        end
            
                        if strcmp(app.SELECTSwitch.Value,s)
                            m2=0;
                        else
                            m2=1;
                        end
                        h1=str2double(app.HealthValue.Text);
                        h2=str2double(app.HealthValue_2.Text);
                        we=webread('http://127.0.0.1:5000/api/v1/winpred','h1',h1,'h2',h2,'m1',m1,'m2',m2);
                        DispProb(we);
                        if n1 > n2
                                    conv2num = str2double(app.HealthValue_2.Text);
                                    newValue = conv2num - (n1-n2);
                                    DISPLAYPlayer2HealthBar(newValue);
                                    conv2char = string(newValue);
                                    thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [4], 'Values', newValue);
                                    app.HealthValue_2.Text = conv2char;
                                    %PLAYSoundFile("hiss.mp3");
                                  % To prevent health from dropping below zero: 
                                    if str2double(app.HealthValue_2.Text) < 0
                                        app.HealthValue_2.Text = "0";
                                    end
                                   
                                  % Update Battle Log
                                    app.BattleLog.Data = [app.BattleLog.Data;{n1 n2}];
                                    
                                  % Reset board:
                                    n1 = 0;
                                    n2=0;
                                    thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [1], 'Values', n1);
                                    thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [2], 'Values', n2);
                                    pause(5);
                                    app.Image.ImageSource = imread("blank.jpg");
                                    set(app.ROLLButton_online, 'Enable', 'on');    
                        
                      % Player 2 has the highest roll:    
                        else
                            
                                    conv2num = str2double(app.HealthValue.Text);
                                    newValue = conv2num - n2;
                                    DISPLAYPlayer1HealthBar(newValue);
                                    pause(5);
                                    thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [3], 'Values', newValue);
                                    conv2char = string(newValue);
                                    app.HealthValue.Text = conv2char;
                                    %PLAYSoundFile("whimper.wav");
                                    
                                  % To prevent health from dropping below zero:
                                    if str2double(app.HealthValue.Text) < 0
                                        app.HealthValue.Text = "0";
                                    end
                                    
                                  % Update Battle Log
                                    app.BattleLog.Data = [app.BattleLog.Data;{n1 n2}];
                                    
                                  % Reset board:
                                    n1 = 0;
                                    n2=0;
                                    thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [1], 'Values', n1);
                                    thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [2], 'Values', n2);
                                    pause(5);
                                    app.Image.ImageSource = imread("blank.jpg");
                                    set(app.ROLLButton_online, 'Enable', 'on');
                                    %set(app.ROLLButton_2, 'Enable', 'on');    
                                
                            end
                        end
                    
                    
                  % Player 1 loses:
                    if str2double(app.HealthValue.Text) <= 0
                        app.HealthValue.Text = "0";
                        DISPLAYPlayer1HealthBar(0);
                        PLAYSoundFile("victory.mp3");
                        score2num = str2double(app.ScoreValue_2.Text);
                        newScore = score2num + 1;
                        score2string = string(newScore);
                        thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [5], 'Values', newScore);
                        app.ScoreValue_2.Text = score2string;
                        app.WinLabel.Text(8) = "2";
                        set(app.WinLabel, 'Visible', 'on');
                        
                      % Reset Game:
                        n1 = 0;
                        n2=0;
                        thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [1], 'Values', n1);
                        thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [2], 'Values', n2);
                        set(app.ROLLButton_online, 'Enable', 'on');
                        pause(5);
                        app.Image.ImageSource = imread("blank.jpg");
                        DISPLAYPlayer1HealthBar(10);
                        DISPLAYPlayer2HealthBar(10);
                        app.HealthValue.Text = "10";
                        app.HealthValue_2.Text = "10";
                        set(app.ROLLButton_online, 'Enable', 'on');
                        set(app.WinLabel, 'Visible', 'off');
                        app.BattleLog.Data = {};
                        webwrite(url, weboptions('RequestMethod','delete'));
                    end
                    
                  % Player 2 loses:
                    if str2double(app.HealthValue_2.Text) <= 0
                        app.HealthValue_2.Text = "0";
                        DISPLAYPlayer2HealthBar(0);
                        PLAYSoundFile("victory.mp3");
                        score2num = str2double(app.ScoreValue.Text);
                        newScore = score2num + 1;
                        score2string = string(newScore);
                        thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [6], 'Values', newScore);
                        app.ScoreValue.Text = score2string;
                        app.WinLabel.Text(8) = "1";
                        set(app.WinLabel, 'Visible', 'on');
                        
                      % Reset Game:
                        n1 = 0;
                        n2 = 0;  
                        thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [1], 'Values', n1);
                        thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [2], 'Values', n2);
                        set(app.ROLLButton_online, 'Enable', 'on');                                       
                        pause(5);
                        app.Image.ImageSource = imread("blank.jpg");
                        DISPLAYPlayer1HealthBar(10);
                        DISPLAYPlayer2HealthBar(10);
                        app.HealthValue.Text = "10";
                        app.HealthValue_2.Text = "10";
                        set(app.ROLLButton_online, 'Enable', 'on');
                        set(app.WinLabel, 'Visible', 'off');
                        app.BattleLog.Data = {};
                        webwrite(url, weboptions('RequestMethod','delete'));
                    end
        end

        % Button pushed function: ROLLButton_2_online
        function ROLLButton_2_onlinePushed(app, event)
            

            app.channelID = 1670178;
            app.writeAPIKey='GVV3NUK6VQ1D8WU9';
            app.readAPIKey='CD8PG73I0LLX8OZ6';
            app.userAPIKey = '0164YBHQA20B4DS6'; 
            global num1 
            global num2
            url = sprintf('https://api.thingspeak.com/channels/%s/feeds.json?api_key=%s', num2str(app.channelID), app.userAPIKey);
                    
                    num2 = randi(6);
                    thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [2], 'Values', num2);
                    pause(5);
                    num1 = thingSpeakRead(app.channelID, 'readKey', app.readAPIKey, 'Fields', [1],'OutputFormat','matrix');
                    set(app.ROLLButton_2_online, 'Enable', 'on');
            
            %Player 2's Dice Roll:
            switch num2
                case 1
                    app.Image2.ImageSource = imread("1.jpg");
                case 2
                    app.Image2.ImageSource = imread("2.jpg");
                case 3
                    app.Image2.ImageSource = imread("3.jpg");
                case 4
                    app.Image2.ImageSource = imread("4.jpg");
                case 5
                    app.Image2.ImageSource = imread("5.jpg");
                otherwise
                    app.Image2.ImageSource = imread("6.jpg");
            end
            
            % Health Bar Display function for Player 1
            function DISPLAYPlayer1HealthBar(health)
                switch health
                    case 0
                        app.HealthBar1.ImageSource = imread("player1hp0.png");
                        app.Player1.Image = imread("player1hp0.png");
                    case 1
                        app.HealthBar1.ImageSource = imread("player1hp1.png");
                    case 2
                        app.HealthBar1.ImageSource = imread("player1hp2.png");
                    case 3
                        app.HealthBar1.ImageSource = imread("player1hp3.png");
                    case 4
                        app.HealthBar1.ImageSource = imread("player1hp4.png");
                    case 5
                        app.HealthBar1.ImageSource = imread("player1hp5.png");
                    case 6
                        app.HealthBar1.ImageSource = imread("player1hp6.png");
                    case 7
                        app.HealthBar1.ImageSource = imread("player1hp7.png");
                    case 8
                        app.HealthBar1.ImageSource = imread("player1hp8.png");
                    case 9
                        app.HealthBar1.ImageSource = imread("player1hp9.png");
                    otherwise  
                        app.HealthBar1.ImageSource = imread("player1hp10.png");
                end
            end
            
            % Health Bar Display function for Player 2
            function DISPLAYPlayer2HealthBar(health)
                switch health
                    case 0
                        app.HealthBar2.ImageSource = imread("hp0.png");
                    case 1
                        app.HealthBar2.ImageSource = imread("hp1.png");
                    case 2
                        app.HealthBar2.ImageSource = imread("hp2.png");
                    case 3
                        app.HealthBar2.ImageSource = imread("hp3.png");
                    case 4
                        app.HealthBar2.ImageSource = imread("hp4.png");
                    case 5
                        app.HealthBar2.ImageSource = imread("hp5.png");
                    case 6
                        app.HealthBar2.ImageSource = imread("hp6.png");
                    case 7
                        app.HealthBar2.ImageSource = imread("hp7.png");
                    case 8
                        app.HealthBar2.ImageSource = imread("hp8.png");
                    case 9
                        app.HealthBar2.ImageSource = imread("hp9.png");
                    otherwise  
                        app.HealthBar2.ImageSource = imread("hp10.png");
                end
            end
            
            % Play Sound File function
            function PLAYSoundFile(filename)
                [y,Fs] = audioread(filename);
                sound(y,Fs);
                clear y Fs;
            end

            function DispProb(pro)
                pro2=round(pro*100);
                pro3=100-pro2;
                app.prob_value.Text = string(pro2)+" %";
                app.prob_value_2.Text = string(pro3)+" %";
                xRound = floor(pro2/5)*5;
                switch xRound
                    case 50
                        app.prob.ImageSource = imread("p.001.png");
                    case 55
                        app.prob.ImageSource = imread("p.011.png");
                    case 60
                        app.prob.ImageSource = imread("p.012.png");
                    case 65
                        app.prob.ImageSource = imread("p.013.png");
                    case 70
                        app.prob.ImageSource = imread("p.014.png");
                    case 75
                        app.prob.ImageSource = imread("p.015.png");
                    case 80
                        app.prob.ImageSource = imread("p.016.png");
                    case 85
                        app.prob.ImageSource = imread("p.017.png");
                    case 90
                        app.prob.ImageSource = imread("p.018.png");
                    case 95
                        app.prob.ImageSource = imread("p.019.png");
                    case 100
                        app.prob.ImageSource = imread("p.021.png");
                    case 45
                        app.prob.ImageSource = imread("p.002.png");
                    case 40
                        app.prob.ImageSource = imread("p.003.png");
                    case 35
                        app.prob.ImageSource = imread("p.004.png");
                    case 30
                        app.prob.ImageSource = imread("p.005.png");
                    case 25
                        app.prob.ImageSource = imread("p.006.png");
                    case 20
                        app.prob.ImageSource = imread("p.007.png");
                    case 15
                        app.prob.ImageSource = imread("p.008.png");
                    case 10
                        app.prob.ImageSource = imread("p.009.png");
                    case 5
                        app.prob.ImageSource = imread("p.009.png");
                    case 0
                        app.prob.ImageSource = imread("p.010.png");
                    otherwise  
                        app.prob.ImageSource = imread("p.001.png");
                end
            end

        
   %  The rest of the code is the same as Player 1's, so that way it doesn't
   %  matter which person rolls first.
   
   %  WARNING: IF YOU ALTER THE BELOW CODE, MAKE SURE THAT PLAYER 1'S CODE 
   %  IS ALSO CHANGED!
            
            
            if num2 > 0
                s = 'ATTACK';
                if strcmp(app.SELECTSwitch.Value,s)
                     m1=0;
                else
                     m1=1;
                end
            
                if strcmp(app.SELECTSwitch.Value,s)
                     m2=0;
                else
                     m2=1;
                end
                h1=str2double(app.HealthValue.Text);
                h2=str2double(app.HealthValue_2.Text);
                we=webread('http://127.0.0.1:5000/api/v1/winpred','h1',h1,'h2',h2,'m1',m1,'m2',m2);
                DispProb(we);
              % Player 1 has the highest roll:
                if num1 > num2
                    
                            conv2num = str2double(app.HealthValue_2.Text);
                            newValue = thingSpeakRead(app.channelID, 'readKey', app.readAPIKey, 'Fields', [4],'OutputFormat','matrix');
                            DISPLAYPlayer2HealthBar(newValue);
                            conv2char = string(newValue);
                            app.HealthValue_2.Text = conv2char;
                            %PLAYSoundFile("hiss.mp3");
                            
                          % To prevent health from dropping below zero: 
                            if str2double(app.HealthValue_2.Text) < 0
                                app.HealthValue_2.Text = "0";
                            end
                           
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{num1 num2}];
                            
                          % Reset board:
                            pause(3);
                            app.Image2.ImageSource = imread("blank.jpg");
                            %set(app.ROLLButton, 'Enable', 'on');
                            set(app.ROLLButton_2_online, 'Enable', 'on');
                            
                     
                        
                
              % Player 2 has the highest roll:    
                else
                    
                            conv2num = str2double(app.HealthValue.Text);
                            newValue = thingSpeakRead(app.channelID, 'readKey', app.readAPIKey, 'Fields', [3],'OutputFormat','matrix');
                            DISPLAYPlayer1HealthBar(newValue);
                            conv2char = string(newValue);
                            app.HealthValue.Text = conv2char;
                            %PLAYSoundFile("whimper.wav");
                            
                          % To prevent health from dropping below zero:
                            if str2double(app.HealthValue.Text) < 0
                                app.HealthValue.Text = "0";
                            end
                            
                          % Update Battle Log
                            app.BattleLog.Data = [app.BattleLog.Data;{num1 num2}];
                            
                          % Reset board:
                            pause(3);
                            app.Image2.ImageSource = imread("blank.jpg");
                            set(app.ROLLButton_2_online, 'Enable', 'on');
                                
                        
                end
            end
            
          % Player 1 loses:
            if str2double(app.HealthValue.Text) <= 0
                app.HealthValue.Text = "0";
                DISPLAYPlayer1HealthBar(0);
                PLAYSoundFile("victory.mp3");
                score2num = str2double(app.ScoreValue_2.Text);
                newScore = score2num + 1;
                score2string = string(newScore);
                app.ScoreValue_2.Text = score2string;
                app.WinLabel.Text(8) = "2";
                set(app.WinLabel, 'Visible', 'on'); 
              % Reset Game:
                num1 = 0;
                num2 = 0; 
                thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [1], 'Values', num1);
                thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [2], 'Values', num2);
                %set(app.ROLLButton, 'Enable', 'off');
                set(app.ROLLButton_2_online, 'Enable', 'on');
                pause(3);
                app.Image.ImageSource = imread("blank.jpg");
                app.Image2.ImageSource = imread("blank.jpg");
                DISPLAYPlayer1HealthBar(10);
                DISPLAYPlayer2HealthBar(10);
                app.HealthValue.Text = "10";
                app.HealthValue_2.Text = "10";
                %set(app.ROLLButton, 'Enable', 'on');
                set(app.ROLLButton_2_online, 'Enable', 'on');
                set(app.WinLabel, 'Visible', 'off');
                app.BattleLog.Data = {};
                webwrite(url, weboptions('RequestMethod','delete'));
                app.prob_value.Text = "50 %";
                app.prob_value_2.Text = "50 %";
                app.prob.ImageSource = imread("p.001.png");
                app.prob_value.Text = "50 %";
                app.prob_value_2.Text = "50 %";
                app.prob.ImageSource = imread("p.001.png");
            end
            
          % Player 2 loses:
            if str2double(app.HealthValue_2.Text) <= 0
                app.HealthValue_2.Text = "0";
                DISPLAYPlayer2HealthBar(0);
                PLAYSoundFile("victory.mp3");
                score2num = str2double(app.ScoreValue.Text);
                newScore = score2num + 1;
                score2string = string(newScore);
                app.ScoreValue.Text = score2string;
                app.WinLabel.Text(8) = "1";
                set(app.WinLabel, 'Visible', 'on');
                
              % Reset Game:
                num1 = 0;
                num2 = 0;
                thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', 1, 'Values', num1);
                thingSpeakWrite(app.channelID, 'WriteKey', app.writeAPIKey, 'Fields', [2], 'Values', num2);
                %set(app.ROLLButton, 'Enable', 'off');
                set(app.ROLLButton_2_online, 'Enable', 'off');                                       
                pause(3);
                app.Image.ImageSource = imread("blank.jpg");
                app.Image2.ImageSource = imread("blank.jpg");
                DISPLAYPlayer1HealthBar(10);
                DISPLAYPlayer2HealthBar(10);
                app.HealthValue.Text = "10";
                app.HealthValue_2.Text = "10";
                %set(app.ROLLButton, 'Enable', 'on');
                set(app.ROLLButton_2_online, 'Enable', 'on');
                set(app.WinLabel, 'Visible', 'off');
                app.BattleLog.Data = {};
                webwrite(url, weboptions('RequestMethod','delete'));
                app.prob_value.Text = "50 %";
                app.prob_value_2.Text = "50 %";
                app.prob.ImageSource = imread("p.001.png");
                app.prob_value.Text = "50 %";
                app.prob_value_2.Text = "50 %";
                app.prob.ImageSource = imread("p.001.png");
            end
        end

        % Changes arrangement of the app based on UIFigure width
        function updateAppLayout(app, event)
            currentFigureWidth = app.UIFigure.Position(3);
            if(currentFigureWidth <= app.onePanelWidth)
                % Change to a 3x1 grid
                app.GridLayout.RowHeight = {487, 487, 487};
                app.GridLayout.ColumnWidth = {'1x'};
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = 1;
                app.Player1.Layout.Row = 2;
                app.Player1.Layout.Column = 1;
                app.Player2.Layout.Row = 3;
                app.Player2.Layout.Column = 1;
            elseif (currentFigureWidth > app.onePanelWidth && currentFigureWidth <= app.twoPanelWidth)
                % Change to a 2x2 grid
                app.GridLayout.RowHeight = {487, 487};
                app.GridLayout.ColumnWidth = {'1x', '1x'};
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = [1,2];
                app.Player1.Layout.Row = 2;
                app.Player1.Layout.Column = 1;
                app.Player2.Layout.Row = 2;
                app.Player2.Layout.Column = 2;
            else
                % Change to a 1x3 grid
                app.GridLayout.RowHeight = {'1x'};
                app.GridLayout.ColumnWidth = {163, '1x', 177};
                app.Player1.Layout.Row = 1;
                app.Player1.Layout.Column = 1;
                app.CenterPanel.Layout.Row = 1;
                app.CenterPanel.Layout.Column = 2;
                app.Player2.Layout.Row = 1;
                app.Player2.Layout.Column = 3;
            end
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.AutoResizeChildren = 'off';
            app.UIFigure.Position = [100 100 1089 487];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.SizeChangedFcn = createCallbackFcn(app, @updateAppLayout, true);

            % Create GridLayout
            app.GridLayout = uigridlayout(app.UIFigure);
            app.GridLayout.ColumnWidth = {163, '1x', 177};
            app.GridLayout.RowHeight = {'1x'};
            app.GridLayout.ColumnSpacing = 0;
            app.GridLayout.RowSpacing = 0;
            app.GridLayout.Padding = [0 0 0 0];
            app.GridLayout.Scrollable = 'on';

            % Create Player1
            app.Player1 = uipanel(app.GridLayout);
            app.Player1.Layout.Row = 1;
            app.Player1.Layout.Column = 1;

            % Create ROLLButton
            app.ROLLButton = uibutton(app.Player1, 'push');
            app.ROLLButton.ButtonPushedFcn = createCallbackFcn(app, @ROLLButtonPushed, true);
            app.ROLLButton.FontName = 'Bookman Old Style';
            app.ROLLButton.FontSize = 20;
            app.ROLLButton.FontWeight = 'bold';
            app.ROLLButton.Visible = 'off';
            app.ROLLButton.Position = [19 141 124 35];
            app.ROLLButton.Text = 'ROLL';

            % Create SELECTSwitchLabel
            app.SELECTSwitchLabel = uilabel(app.Player1);
            app.SELECTSwitchLabel.HorizontalAlignment = 'center';
            app.SELECTSwitchLabel.FontAngle = 'italic';
            app.SELECTSwitchLabel.Visible = 'off';
            app.SELECTSwitchLabel.Position = [54 319 54 23];
            app.SELECTSwitchLabel.Text = 'SELECT:';

            % Create SELECTSwitch
            app.SELECTSwitch = uiswitch(app.Player1, 'rocker');
            app.SELECTSwitch.Items = {'HEAL', 'ATTACK'};
            app.SELECTSwitch.Visible = 'off';
            app.SELECTSwitch.FontSize = 20;
            app.SELECTSwitch.FontWeight = 'bold';
            app.SELECTSwitch.Position = [67 225 27 62];
            app.SELECTSwitch.Value = 'ATTACK';

            % Create ScoreLabel
            app.ScoreLabel = uilabel(app.Player1);
            app.ScoreLabel.FontName = 'Bookman Old Style';
            app.ScoreLabel.FontSize = 25;
            app.ScoreLabel.Position = [27 69 81 32];
            app.ScoreLabel.Text = 'Score:';

            % Create ScoreValue
            app.ScoreValue = uilabel(app.Player1);
            app.ScoreValue.FontName = 'Bookman Old Style';
            app.ScoreValue.FontSize = 25;
            app.ScoreValue.Position = [118 69 25 32];
            app.ScoreValue.Text = '0';

            % Create STARTButton
            app.STARTButton = uibutton(app.Player1, 'push');
            app.STARTButton.ButtonPushedFcn = createCallbackFcn(app, @STARTButtonPushed, true);
            app.STARTButton.FontName = 'Bookman Old Style';
            app.STARTButton.FontSize = 20;
            app.STARTButton.FontWeight = 'bold';
            app.STARTButton.Position = [20 391 124 35];
            app.STARTButton.Text = 'START';

            % Create ReadyLabel
            app.ReadyLabel = uilabel(app.Player1);
            app.ReadyLabel.HorizontalAlignment = 'center';
            app.ReadyLabel.FontSize = 15;
            app.ReadyLabel.FontAngle = 'italic';
            app.ReadyLabel.Position = [41 435 93 22];
            app.ReadyLabel.Text = 'Ready?';

            % Create Image
            app.Image = uiimage(app.Player1);
            app.Image.Visible = 'off';
            app.Image.Position = [36 354 91 90];

            % Create ROLLButton_online
            app.ROLLButton_online = uibutton(app.Player1, 'push');
            app.ROLLButton_online.ButtonPushedFcn = createCallbackFcn(app, @ROLLButton_onlinePushed, true);
            app.ROLLButton_online.FontName = 'Bookman Old Style';
            app.ROLLButton_online.FontSize = 20;
            app.ROLLButton_online.FontWeight = 'bold';
            app.ROLLButton_online.Visible = 'off';
            app.ROLLButton_online.Position = [20 141 124 35];
            app.ROLLButton_online.Text = 'ROLL';

            % Create CenterPanel
            app.CenterPanel = uipanel(app.GridLayout);
            app.CenterPanel.Layout.Row = 1;
            app.CenterPanel.Layout.Column = 2;

            % Create Background
            app.Background = uiimage(app.CenterPanel);
            app.Background.Position = [4 58 742 426];
            app.Background.ImageSource = 'back.png';

            % Create HealthBar1
            app.HealthBar1 = uiimage(app.CenterPanel);
            app.HealthBar1.ImageClickedFcn = createCallbackFcn(app, @updateAppLayout, true);
            app.HealthBar1.HorizontalAlignment = 'left';
            app.HealthBar1.VerticalAlignment = 'top';
            app.HealthBar1.Position = [1 273 340 207];
            app.HealthBar1.ImageSource = 'player1hp10.png';

            % Create HealthBar2
            app.HealthBar2 = uiimage(app.CenterPanel);
            app.HealthBar2.Position = [405 280 343 210];
            app.HealthBar2.ImageSource = 'hp10.png';

            % Create HealthLabel
            app.HealthLabel = uilabel(app.CenterPanel);
            app.HealthLabel.FontName = 'KaiTi';
            app.HealthLabel.FontSize = 20;
            app.HealthLabel.Position = [125 391 75 26];
            app.HealthLabel.Text = 'Health:';

            % Create HealthLabel_2
            app.HealthLabel_2 = uilabel(app.CenterPanel);
            app.HealthLabel_2.FontName = 'KaiTi';
            app.HealthLabel_2.FontSize = 20;
            app.HealthLabel_2.Position = [527 391 75 26];
            app.HealthLabel_2.Text = 'Health:';

            % Create HealthValue_2
            app.HealthValue_2 = uilabel(app.CenterPanel);
            app.HealthValue_2.FontName = 'KaiTi';
            app.HealthValue_2.FontSize = 20;
            app.HealthValue_2.Visible = 'off';
            app.HealthValue_2.Position = [601 390 25 26];
            app.HealthValue_2.Text = '10';

            % Create HealthValue
            app.HealthValue = uilabel(app.CenterPanel);
            app.HealthValue.FontName = 'KaiTi';
            app.HealthValue.FontSize = 20;
            app.HealthValue.Visible = 'off';
            app.HealthValue.Position = [199 390 25 26];
            app.HealthValue.Text = '10';

            % Create Label
            app.Label = uilabel(app.CenterPanel);
            app.Label.FontName = 'KaiTi';
            app.Label.FontSize = 20;
            app.Label.Position = [223 390 35 26];
            app.Label.Text = '/10';

            % Create Label_2
            app.Label_2 = uilabel(app.CenterPanel);
            app.Label_2.FontName = 'KaiTi';
            app.Label_2.FontSize = 20;
            app.Label_2.Position = [625 390 35 26];
            app.Label_2.Text = '/10';

            % Create Player1Label
            app.Player1Label = uilabel(app.CenterPanel);
            app.Player1Label.FontName = 'KaiTi';
            app.Player1Label.FontSize = 20;
            app.Player1Label.Position = [139 422 85 26];
            app.Player1Label.Text = 'Player 1';

            % Create Player2Label
            app.Player2Label = uilabel(app.CenterPanel);
            app.Player2Label.FontName = 'KaiTi';
            app.Player2Label.FontSize = 20;
            app.Player2Label.Position = [551 420 85 26];
            app.Player2Label.Text = 'Player 2';

            % Create WinLabel
            app.WinLabel = uilabel(app.CenterPanel);
            app.WinLabel.HorizontalAlignment = 'center';
            app.WinLabel.FontSize = 50;
            app.WinLabel.FontWeight = 'bold';
            app.WinLabel.Visible = 'off';
            app.WinLabel.Position = [171 297 408 67];
            app.WinLabel.Text = 'PLAYER _ WINS!';

            % Create BattleLogButton
            app.BattleLogButton = uibutton(app.CenterPanel, 'push');
            app.BattleLogButton.ButtonPushedFcn = createCallbackFcn(app, @BattleLogButtonPushed, true);
            app.BattleLogButton.VerticalAlignment = 'top';
            app.BattleLogButton.BackgroundColor = [0.8745 0.8863 0.9608];
            app.BattleLogButton.FontName = 'FangSong';
            app.BattleLogButton.FontSize = 13;
            app.BattleLogButton.Position = [14 20 74 23];
            app.BattleLogButton.Text = 'Battle Log';

            % Create BattleLog
            app.BattleLog = uitable(app.CenterPanel);
            app.BattleLog.ColumnName = {'Player 1 Rolls'; 'Player 2 Rolls'};
            app.BattleLog.RowName = {};
            app.BattleLog.Visible = 'off';
            app.BattleLog.Position = [276 116 198 248];

            % Create HelpButton
            app.HelpButton = uibutton(app.CenterPanel, 'push');
            app.HelpButton.ButtonPushedFcn = createCallbackFcn(app, @HelpButtonPushed, true);
            app.HelpButton.VerticalAlignment = 'top';
            app.HelpButton.BackgroundColor = [0.8745 0.8863 0.9608];
            app.HelpButton.FontName = 'FangSong';
            app.HelpButton.FontSize = 13;
            app.HelpButton.Position = [659 20 74 23];
            app.HelpButton.Text = 'Help';

            % Create help
            app.help = uiimage(app.CenterPanel);
            app.help.Visible = 'off';
            app.help.Position = [174 43 401 422];
            app.help.ImageSource = 'back.png';

            % Create OFFLINEButton
            app.OFFLINEButton = uibutton(app.CenterPanel, 'push');
            app.OFFLINEButton.ButtonPushedFcn = createCallbackFcn(app, @OFFLINEButtonPushed, true);
            app.OFFLINEButton.Position = [283 209 183 37];
            app.OFFLINEButton.Text = 'OFFLINE';

            % Create ONLINEButton
            app.ONLINEButton = uibutton(app.CenterPanel, 'push');
            app.ONLINEButton.ButtonPushedFcn = createCallbackFcn(app, @ONLINEButtonPushed, true);
            app.ONLINEButton.Position = [283 283 183 37];
            app.ONLINEButton.Text = 'ONLINE';

            % Create DogButton
            app.DogButton = uibutton(app.CenterPanel, 'push');
            app.DogButton.ButtonPushedFcn = createCallbackFcn(app, @DogButtonPushed, true);
            app.DogButton.FontSize = 20;
            app.DogButton.Visible = 'off';
            app.DogButton.Position = [250 319 250 45];
            app.DogButton.Text = 'Dog';

            % Create PickOneLabel
            app.PickOneLabel = uilabel(app.CenterPanel);
            app.PickOneLabel.FontSize = 20;
            app.PickOneLabel.Position = [341 386 87 26];
            app.PickOneLabel.Text = 'Pick One';

            % Create SnakeButton
            app.SnakeButton = uibutton(app.CenterPanel, 'push');
            app.SnakeButton.ButtonPushedFcn = createCallbackFcn(app, @SnakeButtonPushed, true);
            app.SnakeButton.FontSize = 20;
            app.SnakeButton.Visible = 'off';
            app.SnakeButton.Position = [250 246 250 45];
            app.SnakeButton.Text = 'Snake';

            % Create prob
            app.prob = uiimage(app.CenterPanel);
            app.prob.ScaleMethod = 'stretch';
            app.prob.Position = [109 14 527 34];
            app.prob.ImageSource = fullfile(pathToMLAPP, 'p.001.png');

            % Create Probabilityofplayer1winningLabel
            app.Probabilityofplayer1winningLabel = uilabel(app.CenterPanel);
            app.Probabilityofplayer1winningLabel.Position = [139 20 174 22];
            app.Probabilityofplayer1winningLabel.Text = 'Probability of player 1 winning: ';

            % Create prob_value
            app.prob_value = uilabel(app.CenterPanel);
            app.prob_value.HorizontalAlignment = 'center';
            app.prob_value.Position = [314 20 42 22];
            app.prob_value.Text = '50';

            % Create prob_value_2
            app.prob_value_2 = uilabel(app.CenterPanel);
            app.prob_value_2.HorizontalAlignment = 'center';
            app.prob_value_2.Position = [560 20 42 22];
            app.prob_value_2.Text = '50';

            % Create Probabilityofplayer2winningLabel
            app.Probabilityofplayer2winningLabel = uilabel(app.CenterPanel);
            app.Probabilityofplayer2winningLabel.Position = [378 20 174 22];
            app.Probabilityofplayer2winningLabel.Text = 'Probability of player 2 winning: ';

            % Create Player2
            app.Player2 = uipanel(app.GridLayout);
            app.Player2.Layout.Row = 1;
            app.Player2.Layout.Column = 3;

            % Create ROLLButton_2
            app.ROLLButton_2 = uibutton(app.Player2, 'push');
            app.ROLLButton_2.ButtonPushedFcn = createCallbackFcn(app, @ROLLButton_2Pushed, true);
            app.ROLLButton_2.FontName = 'Bookman Old Style';
            app.ROLLButton_2.FontSize = 20;
            app.ROLLButton_2.FontWeight = 'bold';
            app.ROLLButton_2.Visible = 'off';
            app.ROLLButton_2.Position = [19 141 124 35];
            app.ROLLButton_2.Text = 'ROLL';

            % Create SELECTSwitch_2
            app.SELECTSwitch_2 = uiswitch(app.Player2, 'rocker');
            app.SELECTSwitch_2.Items = {'HEAL', 'ATTACK'};
            app.SELECTSwitch_2.Visible = 'off';
            app.SELECTSwitch_2.FontSize = 20;
            app.SELECTSwitch_2.FontWeight = 'bold';
            app.SELECTSwitch_2.Position = [67 225 27 62];
            app.SELECTSwitch_2.Value = 'ATTACK';

            % Create SELECTSwitch_2Label
            app.SELECTSwitch_2Label = uilabel(app.Player2);
            app.SELECTSwitch_2Label.HorizontalAlignment = 'center';
            app.SELECTSwitch_2Label.FontAngle = 'italic';
            app.SELECTSwitch_2Label.Visible = 'off';
            app.SELECTSwitch_2Label.Position = [54 319 54 23];
            app.SELECTSwitch_2Label.Text = 'SELECT:';

            % Create ScoreLabel_2
            app.ScoreLabel_2 = uilabel(app.Player2);
            app.ScoreLabel_2.FontName = 'Bookman Old Style';
            app.ScoreLabel_2.FontSize = 25;
            app.ScoreLabel_2.Position = [27 69 81 32];
            app.ScoreLabel_2.Text = 'Score:';

            % Create ScoreValue_2
            app.ScoreValue_2 = uilabel(app.Player2);
            app.ScoreValue_2.FontName = 'Bookman Old Style';
            app.ScoreValue_2.FontSize = 25;
            app.ScoreValue_2.Position = [118 69 25 32];
            app.ScoreValue_2.Text = '0';

            % Create STARTButton_2
            app.STARTButton_2 = uibutton(app.Player2, 'push');
            app.STARTButton_2.ButtonPushedFcn = createCallbackFcn(app, @STARTButton_2Pushed, true);
            app.STARTButton_2.FontName = 'Bookman Old Style';
            app.STARTButton_2.FontSize = 20;
            app.STARTButton_2.FontWeight = 'bold';
            app.STARTButton_2.Position = [19 391 124 35];
            app.STARTButton_2.Text = 'START';

            % Create ReadyLabel_2
            app.ReadyLabel_2 = uilabel(app.Player2);
            app.ReadyLabel_2.HorizontalAlignment = 'center';
            app.ReadyLabel_2.FontSize = 15;
            app.ReadyLabel_2.FontAngle = 'italic';
            app.ReadyLabel_2.Position = [34 435 93 22];
            app.ReadyLabel_2.Text = 'Ready?';

            % Create Image2
            app.Image2 = uiimage(app.Player2);
            app.Image2.Visible = 'off';
            app.Image2.Position = [36 356 91 90];

            % Create ROLLButton_2_online
            app.ROLLButton_2_online = uibutton(app.Player2, 'push');
            app.ROLLButton_2_online.ButtonPushedFcn = createCallbackFcn(app, @ROLLButton_2_onlinePushed, true);
            app.ROLLButton_2_online.FontName = 'Bookman Old Style';
            app.ROLLButton_2_online.FontSize = 20;
            app.ROLLButton_2_online.FontWeight = 'bold';
            app.ROLLButton_2_online.Visible = 'off';
            app.ROLLButton_2_online.Position = [20 141 124 35];
            app.ROLLButton_2_online.Text = 'ROLL';

            % Create ContextMenu
            app.ContextMenu = uicontextmenu(app.UIFigure);

            % Create Menu
            app.Menu = uimenu(app.ContextMenu);
            app.Menu.Text = 'Menu';

            % Create Menu2
            app.Menu2 = uimenu(app.ContextMenu);
            app.Menu2.Text = 'Menu2';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = dicegame_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end