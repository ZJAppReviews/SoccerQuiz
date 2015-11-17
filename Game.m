//
//  Game.m
//  Project3
//
//  Created by Daniel Hickey on 19/11/2013.
//  Copyright (c) 2013 Daniel Hickey. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

- (void) correctAnswer{
    scoreNumb +=1;
    NSLog(@"you gained a point");
    score.text = [NSString stringWithFormat:@"%i", scoreNumb];
    nextCategory.hidden = NO;
    answer1.hidden = YES;
    answer2.hidden = YES;
    answer3.hidden = YES;
    answer4.hidden = YES;
    questionText.hidden = YES;
    categorySelected.hidden = YES;
    result.hidden = NO;
    result.image = [UIImage imageNamed:@"correct.png"];
}

- (void) incorrectAnswer{
    livesNumb -=1;
    NSLog(@"you lost a life");
    lives.text = [NSString stringWithFormat:@"%i", livesNumb];
    nextCategory.hidden = NO;
    answer1.hidden = YES;
    answer2.hidden = YES;
    answer3.hidden = YES;
    answer4.hidden = YES;
    questionText.hidden = YES;
    categorySelected.hidden = YES;
    result.hidden = NO;
    result.image = [UIImage imageNamed:@"wrong.png"];

    if (livesNumb == 0) {
        result.image =[UIImage imageNamed:@"gameOver.png"];
        nextCategory.hidden = YES;
        exit.hidden = NO;
        gameRunning = NO;
        newHighScore.hidden = YES;
        
        if(scoreNumb > highScore) {
            highScore = scoreNumb;
            [[NSUserDefaults standardUserDefaults] setInteger:highScore forKey:@"HighScoreSaved"];
            newHighScore.hidden = NO;
        }        
        
    }
}


- (IBAction)answer1:(id)sender{
    if (answer1Correct == YES) {
        [self correctAnswer];
    }else{
        [self incorrectAnswer];
    }
}

- (IBAction)answer2:(id)sender{
    if (answer2Correct == YES) {
        [self correctAnswer];
    }else{
        [self incorrectAnswer];
    }    
}

- (IBAction)answer3:(id)sender{
    if (answer3Correct == YES) {
        [self correctAnswer];
    }else{
        [self incorrectAnswer];
    }   
}

- (IBAction)answer4:(id)sender{
    if (answer4Correct == YES) {
        [self correctAnswer];
    }else{
        [self incorrectAnswer];
    } 
}


// Premier League questions with answers.
- (void) category1{
    switch (questionSelected) {
        case 0:
            questionText.text = [NSString stringWithFormat:@"What team won the FA Premier League in the 2012/2013 season?"];
            [answer1 setTitle:@"Manchester United" forState:UIControlStateNormal];
            [answer2 setTitle:@"Manchester City" forState:UIControlStateNormal];
            [answer3 setTitle:@"Liverpool" forState:UIControlStateNormal];
            [answer4 setTitle:@"Chelsea" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 1:
            questionText.text = [NSString stringWithFormat:@"Who scored the most goals in the 2010/2011 English Premier League?"];
            [answer1 setTitle:@"Robin van Persie and Carlos Tevez" forState:UIControlStateNormal];
            [answer2 setTitle:@"Dimitar Berbatov and Carlos Tevez" forState:UIControlStateNormal];
            [answer3 setTitle:@"Didier Drogba and Robin van Persie" forState:UIControlStateNormal];
            [answer4 setTitle:@"Fernando Torres and Robin van Persie" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 2:
            questionText.text = [NSString stringWithFormat:@"Who had the most assists this year 2009/2010 English Premier League?"];
            [answer1 setTitle:@"Robin van Persie" forState:UIControlStateNormal];
            [answer2 setTitle:@"Frank Lampard" forState:UIControlStateNormal];
            [answer3 setTitle:@"Didier Drogba" forState:UIControlStateNormal];
            [answer4 setTitle:@"Francesc Fabregas" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 3:
            questionText.text = [NSString stringWithFormat:@"Who won the 2009/2010 English Premier League?"];
            [answer1 setTitle:@"Arsenal" forState:UIControlStateNormal];
            [answer2 setTitle:@"Man Utd" forState:UIControlStateNormal];
            [answer3 setTitle:@"Liverpool" forState:UIControlStateNormal];
            [answer4 setTitle:@"Chelsea" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 4:
            questionText.text = [NSString stringWithFormat:@"Who finished top scorer for Aston Villa in 2010/11 season?"];
            [answer1 setTitle:@"Gabby Agbonlahor" forState:UIControlStateNormal];
            [answer2 setTitle:@"Fabian Delph" forState:UIControlStateNormal];
            [answer3 setTitle:@"Robbie Keane" forState:UIControlStateNormal];
            [answer4 setTitle:@"Darren Bent" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 5:
            questionText.text = [NSString stringWithFormat:@"Which of these Scotsmen won Leeds United’s Player of the Year Award in 1994 Season?"];
            [answer1 setTitle:@"Gordon Strachen" forState:UIControlStateNormal];
            [answer2 setTitle:@"Neil Sullivan" forState:UIControlStateNormal];
            [answer3 setTitle:@"Gary McAllister" forState:UIControlStateNormal];
            [answer4 setTitle:@"Kenny Burns" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 6:
            questionText.text = [NSString stringWithFormat:@"Who Managed Manchester United before Alex Ferguson?"];
            [answer1 setTitle:@"Ron Atkinson" forState:UIControlStateNormal];
            [answer2 setTitle:@"Matt Busby" forState:UIControlStateNormal];
            [answer3 setTitle:@"George Graham" forState:UIControlStateNormal];
            [answer4 setTitle:@"Eddie James" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 7:
            questionText.text = [NSString stringWithFormat:@"How many teams made up the first Premier League Season?"];
            [answer1 setTitle:@"18" forState:UIControlStateNormal];
            [answer2 setTitle:@"20" forState:UIControlStateNormal];
            [answer3 setTitle:@"24" forState:UIControlStateNormal];
            [answer4 setTitle:@"22" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 8:
            questionText.text = [NSString stringWithFormat:@"What year did the first Premier League Season begin?"];
            [answer1 setTitle:@"90/91" forState:UIControlStateNormal];
            [answer2 setTitle:@"92/93" forState:UIControlStateNormal];
            [answer3 setTitle:@"94/95" forState:UIControlStateNormal];
            [answer4 setTitle:@"88/89" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 9:
            questionText.text = [NSString stringWithFormat:@"Which Player won Footballer of the year in 1995/96 season?"];
            [answer1 setTitle:@"Dennis BergKamp" forState:UIControlStateNormal];
            [answer2 setTitle:@"Alan Shearer" forState:UIControlStateNormal];
            [answer3 setTitle:@"Mark Hughes" forState:UIControlStateNormal];
            [answer4 setTitle:@"Eric Cantona" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        default:
            break;
    }
}
// Fifa World Cup questions with answers.
- (void) category2{
    switch (questionSelected) {
        case 0:
            questionText.text = [NSString stringWithFormat:@"Which nation won the inaugural World Cup in 1930?"];
            [answer1 setTitle:@"Italy" forState:UIControlStateNormal];
            [answer2 setTitle:@"Chile" forState:UIControlStateNormal];
            [answer3 setTitle:@"West Germany" forState:UIControlStateNormal];
            [answer4 setTitle:@"Uruguay" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 1:
            questionText.text = [NSString stringWithFormat:@"Who, in 1934, became the first African nation to play at a World Cup?"];
            [answer1 setTitle:@"Egypt" forState:UIControlStateNormal];
            [answer2 setTitle:@"Cameroon" forState:UIControlStateNormal];
            [answer3 setTitle:@"Nigeria" forState:UIControlStateNormal];
            [answer4 setTitle:@"South Africa" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 2:
            questionText.text = [NSString stringWithFormat:@"In 1938, which nation became the first to win the World Cup for a second time?"];
            [answer1 setTitle:@"France" forState:UIControlStateNormal];
            [answer2 setTitle:@"Brazil" forState:UIControlStateNormal];
            [answer3 setTitle:@"West Germany" forState:UIControlStateNormal];
            [answer4 setTitle:@"Italy" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 3:
            questionText.text = [NSString stringWithFormat:@"For how many days did the Jules Rimet trophy famously go missing for before the 1966 World Cup in England?"];
            [answer1 setTitle:@"10" forState:UIControlStateNormal];
            [answer2 setTitle:@"30" forState:UIControlStateNormal];
            [answer3 setTitle:@"3" forState:UIControlStateNormal];
            [answer4 setTitle:@"7" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 4:
            questionText.text = [NSString stringWithFormat:@"Who won the Golden Boot at the 1970 World Cup?"];
            [answer1 setTitle:@"Pele" forState:UIControlStateNormal];
            [answer2 setTitle:@"Jairzinho" forState:UIControlStateNormal];
            [answer3 setTitle:@"Gerd Muller" forState:UIControlStateNormal];
            [answer4 setTitle:@"Carlos Alberto" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 5:
            questionText.text = [NSString stringWithFormat:@"The 1974 World Cup took place in which country?"];
            [answer1 setTitle:@"West Germany" forState:UIControlStateNormal];
            [answer2 setTitle:@"Argentina" forState:UIControlStateNormal];
            [answer3 setTitle:@"Italy" forState:UIControlStateNormal];
            [answer4 setTitle:@"Brazil" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 6:
            questionText.text = [NSString stringWithFormat:@"How old was legendary goalkeeper, Dino Zoff, when he won the World cup with Italy in 1982?"];
            [answer1 setTitle:@"51" forState:UIControlStateNormal];
            [answer2 setTitle:@"44" forState:UIControlStateNormal];
            [answer3 setTitle:@"39" forState:UIControlStateNormal];
            [answer4 setTitle:@"40" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 7:
            questionText.text = [NSString stringWithFormat:@"Mexico stepped in to host the 1986 World Cup instead of whom?"];
            [answer1 setTitle:@"Japan" forState:UIControlStateNormal];
            [answer2 setTitle:@"Columbia" forState:UIControlStateNormal];
            [answer3 setTitle:@"Argentina" forState:UIControlStateNormal];
            [answer4 setTitle:@"Chile" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 8:
            questionText.text = [NSString stringWithFormat:@"Who was the first team to qualify for the 2014 World Cup (excluding Brazil)?"];
            [answer1 setTitle:@"Mexico" forState:UIControlStateNormal];
            [answer2 setTitle:@"Argentina" forState:UIControlStateNormal];
            [answer3 setTitle:@"Germany" forState:UIControlStateNormal];
            [answer4 setTitle:@"Japan" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 9:
            questionText.text = [NSString stringWithFormat:@"Who scored a World Cup record of five goals in one game against Cameroon in USA 1994?"];
            [answer1 setTitle:@"Ronaldo (brazilian)" forState:UIControlStateNormal];
            [answer2 setTitle:@"Oleg Salenko" forState:UIControlStateNormal];
            [answer3 setTitle:@"Gabriel Batistuta" forState:UIControlStateNormal];
            [answer4 setTitle:@"Dennis Bergkamp" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        default:
            break;
    }
    
    
}
- (void) category3{
    // Serie A questions with answers.
    switch (questionSelected) {
        case 0:
            questionText.text = [NSString stringWithFormat:@"Against which team did George Weah score his wonder goal for Milan? "];
            [answer1 setTitle:@"Cremonese" forState:UIControlStateNormal];
            [answer2 setTitle:@"Verona" forState:UIControlStateNormal];
            [answer3 setTitle:@"Venezia" forState:UIControlStateNormal];
            [answer4 setTitle:@"Foggia" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 1:
            questionText.text = [NSString stringWithFormat:@"Where did Milan sign Weah from?"];
            [answer1 setTitle:@"PSG" forState:UIControlStateNormal];
            [answer2 setTitle:@"Bordeaux" forState:UIControlStateNormal];
            [answer3 setTitle:@"Monaco" forState:UIControlStateNormal];
            [answer4 setTitle:@"Marseille" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 2:
            questionText.text = [NSString stringWithFormat:@"What did Alessandro Del Piero do on his first start for Juventus?"];
            [answer1 setTitle:@"Score a hattrick" forState:UIControlStateNormal];
            [answer2 setTitle:@"Get substituted in the first half" forState:UIControlStateNormal];
            [answer3 setTitle:@"Get sent off" forState:UIControlStateNormal];
            [answer4 setTitle:@"Miss a penalty" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 3:
            questionText.text = [NSString stringWithFormat:@"When Ronaldo made his debut for Inter in 1997, which fellow debutant ended up grabbing the limelight with two goals?"];
            [answer1 setTitle:@"Diego Simone" forState:UIControlStateNormal];
            [answer2 setTitle:@"Youri Djorkaeff" forState:UIControlStateNormal];
            [answer3 setTitle:@"Ivan Zamorano" forState:UIControlStateNormal];
            [answer4 setTitle:@"Alvaro Recoba" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 4:
            questionText.text = [NSString stringWithFormat:@"Which team were Inter Playing when Ronaldo made his debut?"];
            [answer1 setTitle:@"Napoli" forState:UIControlStateNormal];
            [answer2 setTitle:@"Cagliari" forState:UIControlStateNormal];
            [answer3 setTitle:@"Bari" forState:UIControlStateNormal];
            [answer4 setTitle:@"Brescia" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 5:
            questionText.text = [NSString stringWithFormat:@"How many clubs did Christian Vieri play for?"];
            [answer1 setTitle:@"13" forState:UIControlStateNormal];
            [answer2 setTitle:@"14" forState:UIControlStateNormal];
            [answer3 setTitle:@"10" forState:UIControlStateNormal];
            [answer4 setTitle:@"12" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 6:
            questionText.text = [NSString stringWithFormat:@"Which English club did Francesco Baiano join in 1997?"];
            [answer1 setTitle:@"Blackburn" forState:UIControlStateNormal];
            [answer2 setTitle:@"West Ham" forState:UIControlStateNormal];
            [answer3 setTitle:@"Middlesbrough" forState:UIControlStateNormal];
            [answer4 setTitle:@"Derby" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 7:
            questionText.text = [NSString stringWithFormat:@"Milan won the title in 1994. In 34 games, how many goals did they score?"];
            [answer1 setTitle:@"35" forState:UIControlStateNormal];
            [answer2 setTitle:@"36" forState:UIControlStateNormal];
            [answer3 setTitle:@"34" forState:UIControlStateNormal];
            [answer4 setTitle:@"37" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 8:
            questionText.text = [NSString stringWithFormat:@"Juventus reached three successive Champions League finals but only won once. Who did they beat?"];
            [answer1 setTitle:@"Marseille" forState:UIControlStateNormal];
            [answer2 setTitle:@"Barcelona" forState:UIControlStateNormal];
            [answer3 setTitle:@"Real Madrid" forState:UIControlStateNormal];
            [answer4 setTitle:@"Ajax" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 9:
            questionText.text = [NSString stringWithFormat:@"What is Pippo Inzaghi's younger brother called? "];
            [answer1 setTitle:@"Marco" forState:UIControlStateNormal];
            [answer2 setTitle:@"Roberto" forState:UIControlStateNormal];
            [answer3 setTitle:@"Fabio" forState:UIControlStateNormal];
            [answer4 setTitle:@"Simone" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        default:
            break;
    }
    
}
- (void) category4{
    // La Liga questions with answers.
    switch (questionSelected) {
        case 0:
            questionText.text = [NSString stringWithFormat:@"Which club won the league title in successive years in 1983 and 1984? "];
            [answer1 setTitle:@"Real Madrid" forState:UIControlStateNormal];
            [answer2 setTitle:@"Athletic Bilbao" forState:UIControlStateNormal];
            [answer3 setTitle:@"Barcelona" forState:UIControlStateNormal];
            [answer4 setTitle:@"Real Sociedad" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 1:
            questionText.text = [NSString stringWithFormat:@"Which club in Spain has finished runners-up in La Liga the most number of times? "];
            [answer1 setTitle:@"Real Madrid" forState:UIControlStateNormal];
            [answer2 setTitle:@"Barcelona" forState:UIControlStateNormal];
            [answer3 setTitle:@"Valencia" forState:UIControlStateNormal];
            [answer4 setTitle:@"Atletico Madrid" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 2:
            questionText.text = [NSString stringWithFormat:@" With which club did Xabi Alonso's father win the league in the 1980s two years in a row?"];
            [answer1 setTitle:@"Barcelona" forState:UIControlStateNormal];
            [answer2 setTitle:@"Real Madrid" forState:UIControlStateNormal];
            [answer3 setTitle:@"Real Sociedad" forState:UIControlStateNormal];
            [answer4 setTitle:@"Athletic Bilbao" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 3:
            questionText.text = [NSString stringWithFormat:@"In which year did Las Palmas finish second in La Liga? "];
            [answer1 setTitle:@"1959" forState:UIControlStateNormal];
            [answer2 setTitle:@"1979" forState:UIControlStateNormal];
            [answer3 setTitle:@"1989" forState:UIControlStateNormal];
            [answer4 setTitle:@"1969" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 4:
            questionText.text = [NSString stringWithFormat:@"Who coached Deportivo La Coruña when they won La Liga in 2000? "];
            [answer1 setTitle:@"Javier Irureta" forState:UIControlStateNormal];
            [answer2 setTitle:@"Rafael Benitez" forState:UIControlStateNormal];
            [answer3 setTitle:@"Gregorio Manzano" forState:UIControlStateNormal];
            [answer4 setTitle:@"Jose Antonio Camacho" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 5:
            questionText.text = [NSString stringWithFormat:@" During Barcelona's title triumphs between 1991 and 1994, in which year did the title race not go down to the wire?"];
            [answer1 setTitle:@"1991" forState:UIControlStateNormal];
            [answer2 setTitle:@"1992" forState:UIControlStateNormal];
            [answer3 setTitle:@"1993" forState:UIControlStateNormal];
            [answer4 setTitle:@"1994" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 6:
            questionText.text = [NSString stringWithFormat:@"Along with Real Madrid and Barcelona, which is the only other club never to have played outside the Spanish top flight? "];
            [answer1 setTitle:@"Valencia" forState:UIControlStateNormal];
            [answer2 setTitle:@"Sevilla" forState:UIControlStateNormal];
            [answer3 setTitle:@"Athletic Bilbao" forState:UIControlStateNormal];
            [answer4 setTitle:@"Deportivo La Coruna" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 7:
            questionText.text = [NSString stringWithFormat:@"How many times have Barcelona and Real Madrid both failed to finish in the top-two in La Liga? "];
            [answer1 setTitle:@"0" forState:UIControlStateNormal];
            [answer2 setTitle:@"6" forState:UIControlStateNormal];
            [answer3 setTitle:@"9" forState:UIControlStateNormal];
            [answer4 setTitle:@"11" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 8:
            questionText.text = [NSString stringWithFormat:@" Who is the all-time top scorer in La Liga history still playing in Spain or elsewhere?"];
            [answer1 setTitle:@"Lionel Messi" forState:UIControlStateNormal];
            [answer2 setTitle:@"Raul" forState:UIControlStateNormal];
            [answer3 setTitle:@"Samuel Eto'o" forState:UIControlStateNormal];
            [answer4 setTitle:@"David Villa" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 9:
            questionText.text = [NSString stringWithFormat:@"Who among these players has won the league with both Barcelona and Real Madrid? "];
            [answer1 setTitle:@"Samuel Eto'o" forState:UIControlStateNormal];
            [answer2 setTitle:@"Javier Saviola" forState:UIControlStateNormal];
            [answer3 setTitle:@"Albert Celades" forState:UIControlStateNormal];
            [answer4 setTitle:@"Robert Prosinecki" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        default:
            break;
    }
    
    
}
- (void) category5{
    // European Cup/Champions League questions with answers.
    switch (questionSelected) {
        case 0:
            questionText.text = [NSString stringWithFormat:@"In which year did two clubs from the same country first contest a final?"];
            [answer1 setTitle:@"1960" forState:UIControlStateNormal];
            [answer2 setTitle:@"2000" forState:UIControlStateNormal];
            [answer3 setTitle:@"2004" forState:UIControlStateNormal];
            [answer4 setTitle:@"2008" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 1:
            questionText.text = [NSString stringWithFormat:@"Which city hosted the first final in 1956?"];
            [answer1 setTitle:@"Paris" forState:UIControlStateNormal];
            [answer2 setTitle:@"London" forState:UIControlStateNormal];
            [answer3 setTitle:@"Madrid" forState:UIControlStateNormal];
            [answer4 setTitle:@"Lisbon" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 2:
            questionText.text = [NSString stringWithFormat:@"Who was the first player to score a hat-trick in a final?"];
            [answer1 setTitle:@"Alfredo Di Stefano" forState:UIControlStateNormal];
            [answer2 setTitle:@"Ferenc Puskas" forState:UIControlStateNormal];
            [answer3 setTitle:@"Eusebio" forState:UIControlStateNormal];
            [answer4 setTitle:@"Jose Aguas" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 3:
            questionText.text = [NSString stringWithFormat:@"In which city is the 2014 final set to be played?"];
            [answer1 setTitle:@"London" forState:UIControlStateNormal];
            [answer2 setTitle:@"Berlin" forState:UIControlStateNormal];
            [answer3 setTitle:@"Moscow" forState:UIControlStateNormal];
            [answer4 setTitle:@"Lisbon" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 4:
            questionText.text = [NSString stringWithFormat:@"Who was the first British player to win a final for a non-British club?"];
            [answer1 setTitle:@"David Beckham" forState:UIControlStateNormal];
            [answer2 setTitle:@"Kevin Keegan" forState:UIControlStateNormal];
            [answer3 setTitle:@"Paul Lambert" forState:UIControlStateNormal];
            [answer4 setTitle:@"Steve McManaman" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 5:
            questionText.text = [NSString stringWithFormat:@"Which final was played in front the largest crowd of spectators?"];
            [answer1 setTitle:@"1957 final" forState:UIControlStateNormal];
            [answer2 setTitle:@"1960 final" forState:UIControlStateNormal];
            [answer3 setTitle:@"1968 final" forState:UIControlStateNormal];
            [answer4 setTitle:@"2008 final" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 6:
            questionText.text = [NSString stringWithFormat:@"How many English clubs have played in a final?"];
            [answer1 setTitle:@"Four" forState:UIControlStateNormal];
            [answer2 setTitle:@"Five" forState:UIControlStateNormal];
            [answer3 setTitle:@"Six" forState:UIControlStateNormal];
            [answer4 setTitle:@"Seven" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 7:
            questionText.text = [NSString stringWithFormat:@"Who is the only player to have scored a hat-trick for the losing team in a final?"];
            [answer1 setTitle:@"Eusebio" forState:UIControlStateNormal];
            [answer2 setTitle:@"Ferenc Puskas" forState:UIControlStateNormal];
            [answer3 setTitle:@"Alfredo Di Stefano" forState:UIControlStateNormal];
            [answer4 setTitle:@"Pierino Prati" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 8:
            questionText.text = [NSString stringWithFormat:@"Which club last won consecutive finals?"];
            [answer1 setTitle:@"Bayern Munich" forState:UIControlStateNormal];
            [answer2 setTitle:@"Liverpool" forState:UIControlStateNormal];
            [answer3 setTitle:@"Real Madrid" forState:UIControlStateNormal];
            [answer4 setTitle:@"Milan" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 9:
            questionText.text = [NSString stringWithFormat:@"Which player has won the tournament with three different teams?"];
            [answer1 setTitle:@"Paulo Sousa" forState:UIControlStateNormal];
            [answer2 setTitle:@"Samuel Eto'o" forState:UIControlStateNormal];
            [answer3 setTitle:@"Francisco Gento" forState:UIControlStateNormal];
            [answer4 setTitle:@"Clarence Seedorf" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        default:
            break;
    }
    
    
    
    
}
- (void) category6{
    // Copa America questions with answers.
    switch (questionSelected) {
        case 0:
            questionText.text = [NSString stringWithFormat:@"WWhich was the first country to host a Copa América?"];
            [answer1 setTitle:@"Chile" forState:UIControlStateNormal];
            [answer2 setTitle:@"Uruguay" forState:UIControlStateNormal];
            [answer3 setTitle:@"Brazil" forState:UIControlStateNormal];
            [answer4 setTitle:@"Argentina" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 1:
            questionText.text = [NSString stringWithFormat:@"Ecuador have competed in the Copa 24 times, but how many times have they won it?"];
            [answer1 setTitle:@"0" forState:UIControlStateNormal];
            [answer2 setTitle:@"2" forState:UIControlStateNormal];
            [answer3 setTitle:@"4" forState:UIControlStateNormal];
            [answer4 setTitle:@"6" forState:UIControlStateNormal];
            answer1Correct = YES;
            break;
        case 2:
            questionText.text = [NSString stringWithFormat:@"Which two teams have won the competition the most?"];
            [answer1 setTitle:@"Argentina and Brazil" forState:UIControlStateNormal];
            [answer2 setTitle:@"Brazil and Chile" forState:UIControlStateNormal];
            [answer3 setTitle:@"Brazil and Uruguay" forState:UIControlStateNormal];
            [answer4 setTitle:@"Argentina and Uruguay" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 3:
            questionText.text = [NSString stringWithFormat:@"What is the longest period of time Brazil have gone without wining the competition?"];
            [answer1 setTitle:@"10 years" forState:UIControlStateNormal];
            [answer2 setTitle:@"20 years" forState:UIControlStateNormal];
            [answer3 setTitle:@"30 years" forState:UIControlStateNormal];
            [answer4 setTitle:@"40 years" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 4:
            questionText.text = [NSString stringWithFormat:@"Only one team from outside of North, Central or South America has played in the tournament - who? "];
            [answer1 setTitle:@"Portugal" forState:UIControlStateNormal];
            [answer2 setTitle:@"Japan" forState:UIControlStateNormal];
            [answer3 setTitle:@"Ireland" forState:UIControlStateNormal];
            [answer4 setTitle:@"Spain" forState:UIControlStateNormal];
            answer2Correct = YES;
            break;
        case 5:
            questionText.text = [NSString stringWithFormat:@"When did Argentina last win the tournament? "];
            [answer1 setTitle:@"1983" forState:UIControlStateNormal];
            [answer2 setTitle:@"1987" forState:UIControlStateNormal];
            [answer3 setTitle:@"1993" forState:UIControlStateNormal];
            [answer4 setTitle:@"2001" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 6:
            questionText.text = [NSString stringWithFormat:@"Where will the next tournament be held in 2015? "];
            [answer1 setTitle:@"Peru" forState:UIControlStateNormal];
            [answer2 setTitle:@"Columbia" forState:UIControlStateNormal];
            [answer3 setTitle:@"Uruguay" forState:UIControlStateNormal];
            [answer4 setTitle:@"Brazil" forState:UIControlStateNormal];
            answer4Correct = YES;
            break;
        case 7:
            questionText.text = [NSString stringWithFormat:@"Which Brazilian striker is tied with Argentina's Norberto Méndez as the top scorer in the history of the competition?"];
            [answer1 setTitle:@"Pele" forState:UIControlStateNormal];
            [answer2 setTitle:@"Ronaldo" forState:UIControlStateNormal];
            [answer3 setTitle:@"Zizinho" forState:UIControlStateNormal];
            [answer4 setTitle:@"Rivaldo" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 8:
            questionText.text = [NSString stringWithFormat:@"9What was the highest score in the history of the tournament?"];
            [answer1 setTitle:@"Brazil 10-0 Uruguay" forState:UIControlStateNormal];
            [answer2 setTitle:@"Brazil 14-0 Bolivia" forState:UIControlStateNormal];
            [answer3 setTitle:@"Argentina 12-0 Ecuador" forState:UIControlStateNormal];
            [answer4 setTitle:@"Chile 12-0 Columbia" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;
        case 9:
            questionText.text = [NSString stringWithFormat:@" Since 1975, only one manager has managed to win the competition twice. Who was it?"];
            [answer1 setTitle:@"Mario Zagaello" forState:UIControlStateNormal];
            [answer2 setTitle:@"Vanderlei Luxemburgo" forState:UIControlStateNormal];
            [answer3 setTitle:@"Calfio Basile" forState:UIControlStateNormal];
            [answer4 setTitle:@"Marcos Calderon" forState:UIControlStateNormal];
            answer3Correct = YES;
            break;

        default:
            break;
    }
    
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{   //if game begins set these values
    if (gameRunning == NO) {
        livesNumb = 3;
        scoreNumb = 0;
        gameRunning = YES;
    } 
    
    result.hidden = YES;
    exit.hidden = YES;
    nextCategory.hidden = YES;
    newHighScore.hidden = YES;
    
    lives.text = [NSString stringWithFormat:@"%i", livesNumb]; //displays the lives left
    score.text = [NSString stringWithFormat:@"%i", scoreNumb]; //displays the score
    
    answer1Correct = NO;
    answer2Correct = NO;
    answer3Correct = NO;
    answer4Correct = NO;
    
    //takes number stored in CategorySaved and saved it in the CategoryLoaded view. 
    categoryLoaded = [[NSUserDefaults standardUserDefaults] integerForKey:@"CategorySaved"];
    
    questionSelected = arc4random() %10;
    
    //if categoryLoaded equals whatever case number sets categorySelected text to stringWithFormat Premier League.. Fifa World Cup etc. 
    switch (categoryLoaded) {
        case 1:
            categorySelected.text = [NSString stringWithFormat:@"Premier League"];
            [self category1];
            break;
        case 2:
            categorySelected.text = [NSString stringWithFormat:@"Fifa World Cup"];
            [self category2];
            break;
        case 3:
            categorySelected.text = [NSString stringWithFormat:@"Serie A"];
            [self category3];
            break;
        case 4:
            categorySelected.text = [NSString stringWithFormat:@"Games"];
            [self category4];
            break;
        case 5:
            categorySelected.text = [NSString stringWithFormat:@"European Cup/Champions League"];
            [self category5];
            break;
        case 6:
            categorySelected.text = [NSString stringWithFormat:@"Copa America"];
            [self category6];
            break;            
        default:
            break;
    }
    
    highScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
