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

namespace UniMsg
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            // Setup Chromium Storage
            CefSharp.Wpf.CefSettings settings = new CefSharp.Wpf.CefSettings();
            settings.CachePath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) + @"\UniMsg\Chromium";
            CefSharp.Cef.Initialize(settings);

            InitializeComponent();

            this.MaxHeight = SystemParameters.VirtualScreenHeight;
            this.MaxWidth = SystemParameters.VirtualScreenWidth;

            this.Loaded += (a, b) =>
            {
                browser_threema.LifeSpanHandler = new CustomLifespanHandler();
                browser_whatsapp.LifeSpanHandler = new CustomLifespanHandler();
                browser_telegram.LifeSpanHandler = new CustomLifespanHandler();
                browser_slack.LifeSpanHandler = new CustomLifespanHandler();
                browser_msteams.LifeSpanHandler = new CustomLifespanHandler();

                browser_threema.Load("web.threema.ch");
                browser_whatsapp.Load("web.whatsapp.com");
                browser_telegram.Load("web.telegram.org");
                browser_slack.Load("app.slack.com/client");
                browser_msteams.Load("teams.microsoft.com");

                Task.Delay(4000).ContinueWith(_ =>
                {
                    Application.Current.Dispatcher.Invoke(new Action(() =>
                    {
                        hideAllBrowser();
                        loadGrid.Visibility = Visibility.Collapsed;
                    }));
                });
            };
            this.Closing += (a, b) =>
            {
                browser_threema.Dispose();
                browser_whatsapp.Dispose();
                browser_telegram.Dispose();
                browser_slack.Dispose();
                browser_msteams.Dispose();
            };
        }

        private void titleBar_MouseMove(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        private void closeButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void maximizeButton_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = this.WindowState == WindowState.Maximized ? WindowState.Normal : WindowState.Maximized;
        }

        private void miniminzeButton_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void hideAllBrowser()
        {
            browser_threema.Visibility = Visibility.Hidden;
            browser_whatsapp.Visibility = Visibility.Hidden;
            browser_telegram.Visibility = Visibility.Hidden;
            browser_slack.Visibility = Visibility.Hidden;
            browser_msteams.Visibility = Visibility.Hidden;
        }

        private void threema_Click(object sender, RoutedEventArgs e)
        {
            if (browser_threema.Visibility != Visibility.Visible)
            {
                hideAllBrowser();
                browser_threema.Visibility = Visibility.Visible;
                browser_threema.Focus();
            }
        }

        private void whatsapp_Click(object sender, RoutedEventArgs e)
        {
            if (browser_whatsapp.Visibility != Visibility.Visible)
            {
                hideAllBrowser();
                browser_whatsapp.Visibility = Visibility.Visible;
                browser_whatsapp.Focus();
            }
        }

        private void msteams_Click(object sender, RoutedEventArgs e)
        {
            if (browser_msteams.Visibility != Visibility.Visible)
            {
                hideAllBrowser();
                browser_msteams.Visibility = Visibility.Visible;
                browser_msteams.Focus();
            }
        }

        private void slack_Click(object sender, RoutedEventArgs e)
        {
            if (browser_slack.Visibility != Visibility.Visible)
            {
                hideAllBrowser();
                browser_slack.Visibility = Visibility.Visible;
                browser_slack.Focus();
            }
        }

        private void telegram_Click(object sender, RoutedEventArgs e)
        {
            if (browser_telegram.Visibility != Visibility.Visible)
            {
                hideAllBrowser();
                browser_telegram.Visibility = Visibility.Visible;
                browser_telegram.Focus();
            }
        }

        private void whatsapp_RefreshClick(object sender, RoutedEventArgs e)
        {
            browser_whatsapp.Load("web.whatsapp.com");
        }

        private void threema_RefreshClick(object sender, RoutedEventArgs e)
        {
            browser_threema.Load("web.threema.ch");
        }

        private void telegram_RefreshClick(object sender, RoutedEventArgs e)
        {
            browser_telegram.Load("web.telegram.org");
        }

        private void slack_RefreshClick(object sender, RoutedEventArgs e)
        {
            browser_slack.Load("app.slack.com/client");
        }

        private void msteams_RefreshClick(object sender, RoutedEventArgs e)
        {
            browser_msteams.Load("teams.microsoft.com");
        }
    }
}
