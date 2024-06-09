//#define _CRT_SECURE_NO_WARNINGS
//#include <stdio.h>
//
//void menu()
//{
//	printf("1. Guess.\n");
//	printf("0. Exit.\n");
//}
//
//void start()
//{
//	int randomNumber = rand() % 10 + 1;
//	int number = 0;
//	printf("\n！！！！！！！！！！Game start！！！！！！！！！！！\n");
//
//	for (int i = 0; i < 3; i++)
//	{
//		printf("Enter the number you guessed: ");
//		scanf("%d", &number);
//
//		if (number > randomNumber)
//		{
//			printf("To big.\n");
//		}
//		else if (number < randomNumber)
//		{
//			printf("To small.\n");
//		}
//		else
//		{
//			printf("\nCongratulations. You got it.\n");
//			break;
//		}
//	}
//
//	printf("The correct number is: %d\n\n", randomNumber);
//}
//
//int main()
//{
//	srand((unsigned int)time(NULL));
//	int choice = 0;
//	do
//	{
//		menu();
//		printf("Enter your choice: ");
//		scanf("%d", &choice);
//
//		switch (choice)
//		{
//		case 1:
//			start();
//			break;
//		case 0:
//			printf("Exit succesfully.\n");
//			break;
//		default:
//			printf("Your input is incorrect.\n");
//			break;
//		}
//	} while (choice);
//
//	return 0;
//}