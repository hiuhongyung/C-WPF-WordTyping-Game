using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Media; //For Playing the audio 
using System.Windows.Threading;

namespace IERG3080_Project
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        DispatcherTimer game_timer;
        SoundPlayer correct_sound = new SoundPlayer(Properties.Resources.correct);
        SoundPlayer wrong_sound = new SoundPlayer(Properties.Resources.wrong);
        SoundPlayer game_end = new SoundPlayer(Properties.Resources.game_end);


        TimeSpan game_Time;
        string[] words = { "404", "API", "application", "backend", "frontend", "bug", "browser", "classes", "cookies", "css", "html", "javascript", "DevOps", "firewall", "html", "react", "firebase", "heroku", "mongoDB", "UI/UX" };
        Random rnd = new Random();

        int correct = 0;
        int incorrect = 0;



        public MainWindow()
        {   

            game_Time = TimeSpan.FromSeconds(60);
            game_timer = new DispatcherTimer(new TimeSpan(0, 0, 1), DispatcherPriority.Normal, delegate
            {
                Countdown_Timer.Text = game_Time.ToString("c");
                if (game_Time == TimeSpan.Zero)
                {
                    game_timer.Stop();
                    game_end.Play();
                    popup1.IsOpen = true;
                    Aftergame.Content = "Congratualations!! You have finished" + correct + " dishes" ;

                }

                game_Time = game_Time.Add(TimeSpan.FromSeconds(-1));
            }, Application.Current.Dispatcher);

            game_timer.Start();



            SoundPlayer playmusic = new SoundPlayer(Properties.Resources.background_music);
            playmusic.Play();

            InitializeComponent();
            lbword.Text = words[rnd.Next(0, words.Length - 1)];
        }


        private void checkGame(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
            {
                if (textBox1.Text == lbword.Text)
                {
                    correct_sound.Play();
                    correct++;
                    lbword.Text = words[rnd.Next(0, words.Length - 1)];
                    textBox1.Text = null;
                }
                else
                {
                    wrong_sound.Play();
                    incorrect++;
                    lbword.Text = words[rnd.Next(0, words.Length - 1)];
                    textBox1.Text = null;
                }
                lbright.Text = "Correct: " + correct;
                lbwrong.Text = "Incorrect: " + incorrect;
            }
        }
    }
}
