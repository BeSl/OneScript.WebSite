
#Использовать "../../model"

Перем ИдентификаторСекции;
Перем Заголовок;

Функция Index() Экспорт

	УправлениеКонтентом.УстановитьЗаголовокСтраницы(ЭтотОбъект, "OneScript - Руководство разработчика");

	ИмяСтраницыПредставления = "index-content";
	ИдентификаторСтраницы = ЭтотОбъект.ЗначенияМаршрута.Получить("id");

	ПараметрыСтраницы = УправлениеКонтентом.ПолучитьПараметрыСтраницыКонтента(
		ИдентификаторСтраницы, 
		ИдентификаторСекции);

	УправлениеКонтентом.ДополнитьПараметрыСтраницыХлебнымиКрошками(
		ПараметрыСтраницы, 
		Заголовок, 
		"/" + ИдентификаторСекции + "/", 
		ИдентификаторСтраницы);

	Возврат Представление(ИмяСтраницыПредставления, ПараметрыСтраницы);

КонецФункции

ИдентификаторСекции = "dev";
Заголовок = "Разработка";