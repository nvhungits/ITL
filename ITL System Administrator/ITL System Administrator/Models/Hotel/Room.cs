using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace ITL_System_Administrator.Models.Hotel
{
    public class Room
    {
        public int RoomId { set; get; }
        public string RoomName { set; get; }
        public string Description { set; get; }
        public string Short_Description { set; get; }
        public string Type { set; get; }
        public int Available { set; get; }

        private DataTable dt = new DataTable();
        private void setDataTable()
        {
            dt.Columns.Add("RoomId", typeof(int));
            dt.Columns.Add("RoomName", typeof(string));
            dt.Columns.Add("Description", typeof(string));
            dt.Columns.Add("Short_Description", typeof(string));
            dt.Columns.Add("Type", typeof(string));
            dt.Columns.Add("Available", typeof(int));

            int LengthRoom = 10;
            for (int i = 0; i < LengthRoom; i++)
            {
                int roomId = i+1;
                dt.Rows.Add(roomId, "Room " + roomId, "Welcome to Room" + roomId, "Welcome to Room" + roomId, "Normal", 1);
            }
        }

        public Room()
        {
            setDataTable();
        }

        public List<Room> setRooms()
        {
            List<Room> lstRoom = new List<Room>();
            foreach (DataRow dr in dt.Rows)
            {
                Room r = new Room();
                r.RoomId = Convert.ToInt32(dr["RoomId"].ToString());
                r.RoomName = dr["RoomName"].ToString();
                r.Description = dr["Description"].ToString();
                r.Short_Description = dr["Short_Description"].ToString();
                r.Type = dr["Type"].ToString();
                r.Available = Convert.ToInt32(dr["Available"].ToString());
                lstRoom.Add(r);
            }
            return lstRoom;
        }
    }
}