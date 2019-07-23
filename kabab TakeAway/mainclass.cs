using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace kabab_TakeAway
{
    public class mainclass
        //this is the main class
    {
        KebabTakeawayEntities1  Kebabobj = new KebabTakeawayEntities1();
        email objemail = new email();
        user userobj = new user();
        maintb  mainobj = new maintb();
        public void Addemail(string Email)
        {
            objemail.Email1  = Email;


            Kebabobj.emails.Add(objemail);
            Kebabobj.SaveChanges();



        }
        public void adduser(string Password, string Username)
            //this is the add user where user add
        {

            userobj.Username = Username;
            userobj.password = Password;

            Kebabobj.users.Add(userobj);
            Kebabobj.SaveChanges();

        }
        public void Addorder(string Name, string Mobile, string Orders, string Drnks)
        {
            mainobj.Name = Name;
            mainobj.Mobile = Mobile;
            mainobj.Orders  = Orders;
            mainobj.Drink  = Drnks;


            Kebabobj.maintbs.Add(mainobj);
            Kebabobj.SaveChanges();




        }
        public void DeleteORder(int kID)
        {
            //delete button which delete the item and 
            using (KebabTakeawayEntities1 context = new KebabTakeawayEntities1())
            {


                maintb  obj = context.maintbs .First(x => x.Us == kID);
                context.maintbs.Remove(obj);
                context.SaveChanges();


            }

        }
        public void Updateo(int ID, string Name, string Mobile, string Orders, string Drnks)
        {
            //update button 
            using (var db = new KebabTakeawayEntities1())
            {
                var mainobj = db.maintbs.SingleOrDefault(b => b.Us == ID);
                if (mainobj != null)
                {
                    mainobj.Name = Name;
                    mainobj.Mobile = Mobile;
                    mainobj.Orders = Orders;
                    mainobj.Drink = Drnks;

                    db.SaveChanges();

                }



            }
        }
    }
}