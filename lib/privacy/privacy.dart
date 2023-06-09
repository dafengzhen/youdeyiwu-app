import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youdeyiwu_app/constants/app_constant.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    var appName = dotenv.get(AppConstant.appName);

    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              Text(
                '隐私政策',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
              SizedBox(height: 16.h),

              // 概述
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '一、概述',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const Text(
                    '1. 我们会按照合法、正当、必要、诚信的原则收集、存储、保护、使用您的个人信息。',
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    '2. 如果为了向您提供服务而需要从第三方获取您的信息，我们将要求第三方说明信息来源，并要求第三方保障其提供信息的合法性；如果我们开展业务需进行的个人信息处理活动超出您原本向第三方提供个人信息时的授权范围，我们将征得您的明确同意。',
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // 我们如何收集信息
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '二、我们如何收集信息',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const Text(
                    '1. 根据相关法律法规及国家标准，我们可能在下列情形下依法处理您的个人信息：取得您的同意；根据您的要求订立和履行合同所必需的；履行法定义务所必需的，如反洗钱、反恐怖融资、实名管理等相关法律法规要求的必要信息；与国家安全、国防安全直接相关的；为应对突发公共卫生事件，或者紧急情况下为保护自然人的生命健康和财产安全所必需；与犯罪侦查、起诉、审判和判决执行等直接相关的；所收集的个人信息是您自行公开的；从合法公开披露的信息中收集的个人信息，例如：合法的新闻报道、政府信息公开等渠道；用于维护所提供的服务的安全稳定运行所必需的，例如：发现、处置产品或服务的故障；法律法规规定的其他情形。',
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    '2. 请您理解，我们向您提供的服务是不断更新和发展的，基于服务目的我们可能需要收集您的其他信息，并通过页面提示、交互流程、协议约定等方式向您说明信息收集的范围、目的与方式，并征得您的授权同意。我们会按照本政策以及相应的服务协议约定使用、存储及保护您的信息；如您选择不提供前述信息，您可能无法使用某项或某部分服务，但不影响您使用我们提供的其他服务。',
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // 我们如何使用 Cookie 等技术
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '三、我们如何使用 Cookie 等技术',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const Text(
                    '1. 为使您获得更轻松的访问体验，您访问我们的网站或使用提供的服务时，我们可能会通过小型数据文件识别您的身份，这么做可帮您省去重复输入注册信息的步骤，或者帮助判断您的账户安全状态。这些数据文件可能是Cookie或其他本地存储，您的浏览器或关联应用程序提供的其他本地存储（以下简称“Cookie”）。',
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    '2. 如您的浏览器或浏览器附加服务允许，您可以修改对Cookie的接受程度或者拒绝相关Cookie。多数浏览器工具条中的“帮助”部分会告诉您怎样防止您的浏览器接受新的Cookie，以及怎样让您的浏览器在您收到一条新Cookie时通知您或者怎样彻底关闭Cookie。此外，您可以通过改变浏览器附加程序的设置，或通过访问提供商的网页，来关闭或删除浏览器附加程序使用的类似数据。但这一举动在某些情况下可能会影响您安全访问我们的网站和使用相关服务。',
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // 我们如何存储和保护信息
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '四、我们如何存储和保护信息',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const Text(
                    '1. 我们在中华人民共和国境内收集和产生的个人信息将存储在中华人民共和国境内。如之后由于产品或服务更新，我们需要将您的个人信息向境外传输的，我们会按照法律法规和相关监管部门的规定执行，并通过签订协议、现场核查等有效措施，要求境外机构为所获得的您的个人信息保密。我们仅在本政策所述目的所必需期间和法律法规及监管规定的时限内保存您的个人信息。',
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    '2. 为了保障您的信息安全，我们在收集您的信息后，将采取各种合理必要的措施保护您的信息。例如，在技术开发环境当中，我们仅使用经过去标识化处理的信息进行统计分析；对外提供研究报告时，我们将对报告中所包含的信息进行去标识化处理。我们会将去标识化后的信息与可用于恢复识别个人的信息分开存储，确保在针对去标识化信息的后续处理中不重新识别个人。',
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '3. 在我们采取严格信息安全措施保护您的个人信息的同时，请您务必妥善保管好您的身份要素。您在使用$appName时，我们会通过您的身份要素来识别您的身份。一旦您泄漏了前述信息，您可能会蒙受损失，并可能对您产生不利。如您发现您的身份要素可能或已经泄露时，请您立即和我们取得联系，以便我们及时采取相应措施以避免或降低相关损失。',
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '4. 在您终止使用$appName后，我们会停止对您的个人信息的收集和使用，但法律法规或监管部门另有规定的除外。如我们停止运营，我们将及时停止收集、使用您个人信息的活动，将停止运营的通知以逐一送达或公告的形式通知您，并对所持有的您的个人信息进行删除或匿名化处理。',
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // 我们如何使用信息
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '五、我们如何使用信息',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const Text(
                    '1. 为了提供适合您的服务，提供服务状态通知等功能，并持续维护、改善这些功能，对您的信息进行分析、加工或其他处理。',
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    '2. 根据法律法规或监管要求向相关部门进行报告或配合调查。',
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // 我们如何对外提供信息
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '六、我们如何对外提供信息',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const Text(
                    '获得您的另行明确同意的情形。',
                  ),
                  SizedBox(height: 10.h),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '',
                        ),
                        TextSpan(
                          text:
                              '1. 向您提供服务所必需的共享。某些产品或服务可能由第三方提供或由我们与第三方共同提供，因此，只有共享您的信息，才能提供您需要的产品或服务。',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '',
                        ),
                        TextSpan(
                          text: '2. 因监管检查或依据行政和司法机关提出的合法要求等。',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // 您如何行使您的个人信息权利
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '七、您如何行使您的个人信息权利',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const Text(
                    '1. 我们将采取适当的技术手段，保障您可以访问、更新、更正和获取您的个人信息。但出于安全性和身份识别（如号码申诉服务）的考虑或根据法律法规的强制规定，您可能无法修改注册时提供的初始注册信息及其他验证信息。',
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    '2. 您可以通过访问“我”的界面查阅您的昵称、头像以及注册信息等个人信息。如您发现我们收集、储存的您的个人信息有错误或不完整的，或者您发现我们收集、使用您个人信息的行为违反了法律法规或违反了与您的约定，您可以联系我们要求更正、补充或删除。',
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    '3. 当您符合约定的账户注销条件并注销相关账户后，我们将按照法律要求删除您该账户内的所有个人信息或进行匿名化处理，但如相关个人信息按照法律法规规定的保存期限未届满或者其他依法不适宜删除或匿名化的情形，我们将停止除存储和采取必要的安全保护措施之外的处理。',
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    '4. 当我们与第三方机构合作向您提供服务时，第三方机构将按照其发布的隐私权政策或与您签署的其他条款（如有）告知您个人信息处理者的相关信息，并按照适用的要求严格保护您的信息、告知您行使个人信息权利的方式。请您仔细阅读相关政策、条款；如有疑问，可以根据您所使用的服务咨询该第三方机构。',
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // 对第三方责任的声明
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '八、对第三方责任的声明',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    '1. 请您注意，您访问的第三方网站经营者、通过$appName接入的第三方服务可能有自己的隐私权政策；当您查看第三方创建的网页或使用第三方开发的应用程序时，这些第三方可能会放置他们自己的Cookie或网络Beacon，这些Cookie或网络Beacon不受我们的控制，且它们的使用不受本政策的约束。我们会努力去要求这些主体对您的个人信息采取保护措施，建议您与他们联系以获得关于他们的隐私权政策的详细情况。如您发现这些第三方创建的网页或第三方开发的应用程序存在风险时，建议您终止相关操作以保护您的合法权益。',
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '2. 此外，$appName部分服务需要由我们与第三方共同为您提供（例如：内容分享功能）。为此，$appName当中会嵌入第三方的软件工具开发包（以下简称“SDK”）或其他类似的应用程序。$appName会对SDK或其他类似的应用程序进行严格的安全检测，并要求第三方采取严格的数据保护措施，切实保障您的合法权益。',
                  ),
                ],
              ),
              SizedBox(height: 16.h),

              // 本政策的适用及更新
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '九、本政策的适用及更新',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    '1. $appName服务适用本政策，但若所承载的相关产品、服务已有独立的隐私权政策或相应的用户服务协议当中存在特殊约定的除外。',
                  ),
                  SizedBox(height: 10.h),
                  const Text(
                    '2. 发生重大变化情形时，我们会适时对本政策进行更新，如本政策发生更新，我们将以邮箱通知、弹窗提示、短消息或者在官方网站发布公告的方式来通知您，更新内容将在前述通知指定日期开始生效。为了您能及时接收到通知，建议您在联系方式（如手机号、电子邮箱等）更新时及时通知我们。',
                  ),
                ],
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    ));
  }
}
