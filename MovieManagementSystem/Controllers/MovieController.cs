using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MovieManagementSystem.Models;
using System;
using System.Data;
using System.Data.SqlClient;


namespace MovieManagementSystem.Controllers
{
    public class MovieController : Controller
    {
        string connectionString = @"Data Source = MRINAL\MSSQLSERVER01; Initial Catalog = MovieTicketBookingSystem; Integrated Security=True";

        // GET: MovieController
        [HttpGet]
        public ActionResult Index()
        {
            DataTable dataTable = new DataTable();

            using ( SqlConnection sqlCon = new SqlConnection(connectionString) )
            {
                sqlCon.Open();
                SqlDataAdapter dataAdapter = new SqlDataAdapter("Select * from Movie", sqlCon);
                dataAdapter.Fill(dataTable);
            }
            return View(dataTable);
        }

        // GET: MovieController/Details/5
        public ActionResult Details(int id)
        {
            MovieModel mm = new MovieModel();
            DataTable dt = new DataTable();

            using (SqlConnection sqlCon = new SqlConnection(connectionString) )
            {
                sqlCon.Open();
                string query = " Select * from  movie where MovieId = @ID";
                SqlDataAdapter sda = new SqlDataAdapter(query,sqlCon);
                sda.SelectCommand.Parameters.AddWithValue("@ID", id);
                sda.Fill(dt);
            }

            if( dt.Rows.Count == 1 )
            {
                mm.MovieId = Convert.ToInt32(dt.Rows[0]["MovieId"].ToString());
                mm.Title = dt.Rows[0]["Title"].ToString();
                mm.Language = dt.Rows[0]["Language"].ToString();
                mm.Genre = dt.Rows[0]["Genre"].ToString();
                mm.ReleaseDate = Convert.ToDateTime(dt.Rows[0]["ReleaseDate"].ToString() );
                mm.Description = dt.Rows[0]["Description"].ToString();

                return View(mm);
            }
            else
            {
                return RedirectToAction("Index");
            }
        }

        // GET: MovieController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: MovieController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: MovieController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: MovieController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: MovieController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: MovieController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
