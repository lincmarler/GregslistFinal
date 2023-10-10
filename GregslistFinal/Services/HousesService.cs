using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using server.Models;

namespace GregslistFinal.Services
{
    public class HousesService
    {
        private readonly HousesRepository _repo;

        public HousesService(HousesRepository repo)
        {
            _repo = repo;
        }

        internal House CreateHouse(House houseData)
        {
            House house = _repo.CreateHouse(houseData);
            return house;
        }

        internal List<House> GetAllHouses()
        {
            List<House> house = _repo.GetAllHouses();
            return house;
        }

        internal House GetHouseById(int houseId)
        {
            House house = _repo.GetHouseById(houseId);
            if (house == null) throw new Exception($"no car with the id: {houseId}");
            return house;
        }

        internal string RemoveHouse(int houseId)
        {
            House house = this.GetHouseById(houseId);
            _repo.RemoveHouse(houseId);
            return $"{house.Year} {house.Model} was removed from databse.";
        }

        internal House UpdateHouse(House updateData)
        {
            House original = this.GetHouseById(updateData.Id);
            original.Model = updateData.Model != null ? updateData.Model : original.Model;
            original.Year = updateData.Year != 0 ? updateData.Year : original.Year;
            original.Price = updateData.Price != null ? updateData.Price : original.Price;
            original.ImgUrl = updateData.ImgUrl ?? original.ImgUrl;
            original.Description = updateData.Description ?? original.Description;
            House house = _repo.UpdateHouse(original);
            return house;
        }
    }
}