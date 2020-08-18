#include <SFML/Graphics.hpp>
#include <time.h>
using namespace sf;    //sfml 命名空间
const int M=20;        //设置界面高度
const int N=10;        //设置界面宽度
int field[M][N] = {0}; //界面数组
struct Point           //方块的结构体
{int x,y;}a[4],b[4];

int figures[7][4] =
        {
                1,3,5,7, //
                2,4,5,7, //
                3,5,4,6, //
                3,5,4,7, //
                2,3,5,7, //
                3,5,7,6, //
                2,3,4,5, //
        };               //四行两列的方块对应不同的形状
bool check()
{
    for (int i=0;i<4;i++)
        if (a[i].x<0 || a[i].x>=N || a[i].y>=M) return 0;
        else if (field[a[i].y][a[i].x]) return 0;

    return 1;
};
int main()
{
    srand(time(0));

    RenderWindow window(VideoMode(320, 480), "The Game!");

    Texture t1,t2,t3;
    t1.loadFromFile("C:/Users/liuxu/Desktop/C++SMFL/TETRIS/images/tiles.png");
    t2.loadFromFile("C:/Users/liuxu/Desktop/C++SMFL/TETRIS/images/background.png");
    t3.loadFromFile("C:/Users/liuxu/Desktop/C++SMFL/TETRIS/images/frame.png");

    Sprite s(t1), background(t2), frame(t3);// 界面设置

    int dx=0; bool rotate=0; int colorNum=1;
    float timer=0,delay=0.3;

    Clock clock;

    while (window.isOpen())
    {
        float time = clock.getElapsedTime().asSeconds();
        clock.restart();
        timer+=time;

        Event e;
        while (window.pollEvent(e))
        {
            if (e.type == Event::Closed)
                window.close();

            if (e.type == Event::KeyPressed)
                if (e.key.code==Keyboard::Up) rotate=true;
                else if (e.key.code==Keyboard::Left) dx=-1;
                else if (e.key.code==Keyboard::Right) dx=1;
        }

        if (Keyboard::isKeyPressed(Keyboard::Down)) delay=0.05;

        //// <- Move -> ///
        for (int i=0;i<4;i++)  { b[i]=a[i]; a[i].x+=dx; }
        if (!check()) for (int i=0;i<4;i++) a[i]=b[i];

        //////Rotate//////
        if (rotate)
        {
            Point p = a[1]; //center of rotation
            for (int i=0;i<4;i++)
            {
                int x = a[i].y-p.y;
                int y = a[i].x-p.x;
                a[i].x = p.x - x;
                a[i].y = p.y + y;
            }
            if (!check()) for (int i=0;i<4;i++) a[i]=b[i];
        }

        ///////Tick//////
        if (timer>delay)
        {
            for (int i=0;i<4;i++) { b[i]=a[i]; a[i].y+=1; }

            if (!check())
            {
                for (int i=0;i<4;i++) field[b[i].y][b[i].x]=colorNum;

                colorNum=1+rand()%7;
                int n=rand()%7;
                for (int i=0;i<4;i++)
                {
                    a[i].x = figures[n][i] % 2;
                    a[i].y = figures[n][i] / 2;
                }
            }

            timer=0;
        }

        ///////check lines//////////
        int k=M-1;
        for (int i=M-1;i>0;i--)
        {
            int count=0;
            for (int j=0;j<N;j++)
            {
                if (field[i][j]) count++;
                field[k][j]=field[i][j];
            }
            if (count<N) k--;
        }

        dx=0; rotate=0; delay=0.3;

        /////////draw//////////
        window.clear(Color::White);
        window.draw(background);

        for (int i=0;i<M;i++)
            for (int j=0;j<N;j++)
            {
                if (field[i][j]==0) continue;
                s.setTextureRect(IntRect(field[i][j]*18,0,18,18));
                s.setPosition(j*18,i*18);
                s.move(28,31); //offset
                window.draw(s);
            }

        for (int i=0;i<4;i++)
        {
            s.setTextureRect(IntRect(colorNum*18,0,18,18));
            s.setPosition(a[i].x*18,a[i].y*18);
            s.move(28,31); //offset
            window.draw(s);
        }

        window.draw(frame);
        window.display();
    }

    return 0;
}




