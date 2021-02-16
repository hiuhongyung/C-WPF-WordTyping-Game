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
using System.Windows.Shapes;
using System.Windows.Threading;
using System.Media;

namespace IERG3080_Project
{
    /// <summary>
    /// Interaction logic for LandingPage.xaml
    /// </summary>
    public partial class LandingPage : Window
    {
        DispatcherTimer counting = new DispatcherTimer();
        
        public LandingPage()
        {
            InitializeComponent();
        }

        public int choosing_minute = 0;

        
        private void  Button_Click_1(object sender, RoutedEventArgs e)
        {   
            
           
           
            MainWindow mainWindow = new MainWindow();
                
                mainWindow.Show();

                this.Close();
            


            
        }
        
        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
          
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Button_Click_about(object sender, RoutedEventArgs e)
        {
            Window1 about = new Window1();

            about.Show();
            this.Close();
        }
    }
}
