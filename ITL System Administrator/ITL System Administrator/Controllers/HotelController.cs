using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ITL_System_Administrator.Models.Hotel;

namespace ITL_System_Administrator.Controllers
{
    public class HotelController : Controller
    {
        //
        // GET: /Hotel/

        public ActionResult Rooms()
        {
            return View();
        }

        Room r = new Room();
        public List<Room> setRooms()
        {
            return r.setRooms();
        }
    }
}
