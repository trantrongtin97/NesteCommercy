namespace NesteCommercy.Shared
{
    public class PageAndSort<T>
    {
        public int TotalCount { get; set; }
        public List<T> Datas { get; set; }
    }
}
