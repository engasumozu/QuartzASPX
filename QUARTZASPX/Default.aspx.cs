using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Quartz;
using Quartz.Impl;
using Quartz.Impl.Triggers;
using System.Threading;
using System.Net;
using System.Net.Mail;

public partial class _Default : Page
{
    private static IScheduler _scheduler;
    public static string v_To_Email;
    protected void Page_Load(object sender, EventArgs e)
    {
        ISchedulerFactory schedulerFactory = new StdSchedulerFactory();
        _scheduler = schedulerFactory.GetScheduler();
        _scheduler.Start();
        Console.WriteLine("Starting Scheduler");

        
        
    }
    public static void AddJob()
    {
        IMyJob myJob = new MyJob(); //This Constructor needs to be parameterless
        JobDetailImpl jobDetail = new JobDetailImpl("Job1", "Group1", myJob.GetType());
        CronTriggerImpl trigger = new CronTriggerImpl("Trigger1", "Group1", "0 0/1 * 1/1 * ? *"); //run every minute between the hours of 8am and 5pm
        _scheduler.ScheduleJob(jobDetail, trigger);
        DateTimeOffset? nextFireTime = trigger.GetNextFireTimeUtc();
        Console.WriteLine("Next Fire Time:" + nextFireTime.Value);

    }
    protected void btn_test_Click(object sender, EventArgs e)
    {
        v_To_Email = Server.HtmlDecode(txt_test.Text);
        AddJob();
        btn_test.Visible = false;
        btn_Stop.Visible = true;
    }
    protected void btn_Stop_Click(object sender, EventArgs e)
    {
        _scheduler.Shutdown();
        btn_Stop.Visible = false;
        btn_test.Visible = true;
    }
}

public class MyJob : IMyJob
{
    public void Execute(IJobExecutionContext context)
    {
        
        Console.WriteLine("In MyJob class");
        DoMoreWork(_Default.v_To_Email);
    }

    public void DoMoreWork(string pEmail)
    {
        _Default a = new _Default();


        Console.WriteLine("Do More Work");
        var fromAddress = new MailAddress("pao6591@gmail.com", "prueba  quartz");
        var toAddress = new MailAddress(pEmail, "To prueba");
        const string fromPassword = "19918485engas";
        const string subject = "Prueba de Quartz";
        const string body = "Esto es un mensaje de Quartz";

        var smtp = new SmtpClient
        {
            Host = "smtp.gmail.com",
            Port = 587,
            EnableSsl = true,
            DeliveryMethod = SmtpDeliveryMethod.Network,
            UseDefaultCredentials = false,
            Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
        };
        using (var message = new MailMessage(fromAddress, toAddress)
        {
            Subject = subject,
            Body = body
        })
        {
            smtp.Send(message);
        }
    }
}

internal interface IMyJob : IJob
{
}