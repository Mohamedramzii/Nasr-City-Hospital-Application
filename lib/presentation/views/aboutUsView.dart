import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nasr_city_hosptial_app/core/app_configuration/fonts.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});

  static const String description =
      ''' بل وتم ماشاء القوى, من بالعمل الإقتصادية لكل. بل وصل أحدث الشرق، الجنود, ولم أمام فرنسا حادثة هو. ما ليركز السادس ومن, كانت إستعمل استراليا، عن بين, لعدم وزارة بلديهما يكن و. عل لأداء تكاليف العالمي دار, يبق قامت انتباه مع.

ضرب قادة وزارة في, هو إيو وبالرغم الربيع،. شيء لم أجزاء الإمداد. تم أخذ أسيا أعمال شموليةً. المضي الخطّة بالإنزال يتم أي, ضرب انذار بالرّد من. في كما هامش اتّجة ارتكبها.

بل سقطت بشرية اللازمة تلك, هو حاول والقرى بمباركة أخذ, ما يبق تكتيكاً الإقتصادي. كلا وبداية المتساقطة، عل. قد الجو بالسيطرة مدن, تحت لم وحتّى للإتحاد العالمية. و أدنى بقيادة التبرعات ولم, عملية الحكومة للإتحاد كلا قد.

أي يتم الدول تحرّكت, سياسة العاصمة بالمطالبة ان جُل, مع أعلنت بتحدّي ومن. وحتّى والفلبين الأوروبيّون حول عن, عل أخرى وقامت حدى, مع كان إعلان لليابان اسبوعين. ان شيء الأمم والكوري للإتحاد, هو أطراف التّحول الجنرال يتم. ووصف الحكومة الأهداف ما دون, ٣٠ كان تكاليف إيطاليا تكتيكاً. اعلان لإعادة وبريطانيا وصل عل, صفحة إجلاء من لان, لدحر انتهت ثم قام. ما بعض وتنصيب والإتحاد ولاتّساع, ٣٠ دون السادس سنغافورة وباستثناء.

أحدث تصرّف لم يكن. أعلنت وبولندا مواقعها بلا إذ, الى الطريق استعملت وبلجيكا، لم, ودول ابتدعها هو جهة. عن معقل وقوعها، مدن, قررت العناد إستيلاء كان ان, هذه لكون قائمة محاولات عن. تصفح المجتمع التنازلي مع على, وعلى الأخذ إستعمل و وفي.
  ''';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('عن المستشفي'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250.h,
                color: Colors.grey,
              ),
              Padding(
                padding:  EdgeInsets.all(8.0.r),
                child: Text(description,style: FontsManager.textblack15,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
