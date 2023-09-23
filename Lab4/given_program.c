int main()
{
    unsigned int a[11] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    unsigned int h = 0;
    for(int i = 0; i < 10; i++)
        h = h + a[i];
    a[10] = h;
}