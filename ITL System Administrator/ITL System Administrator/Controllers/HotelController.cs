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
        Room r = new Room();
        public ActionResult Rooms()
        {
            return View(r.setRooms());
        }
        public ActionResult RoomDetails()
        {
            int RoomId = Convert.ToInt32(Request.QueryString["RoomId"]);
            return View(r.getRoomById(RoomId));
        }
    }
}
