#define GPFCON      (*(volatile unsigned long *)0x56000050)
#define GPFDAT      (*(volatile unsigned long *)0x56000054)

int main()
{
    GPFCON &= ~(3 << 8);    // ����GPF4Ϊ�����, λ[9:8]=0b01
	GPFCON |= (1 << 8);
    GPFDAT &= ~(1 << 4);    // GPF4���0��LED1����

    return 0;
}
