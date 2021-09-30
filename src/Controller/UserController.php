<?php

namespace App\Controller;

use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Knp\Component\Pager\PaginatorInterface;
use JMS\Serializer\SerializerInterface;

 /**
  * Class UserController
  * @package App\Controller
  * @Route("/api", name="user_api")
  */
 class UserController extends AbstractController
 {

   /**
   * @param UserRepository $userRepository
   * @return JsonResponse
   * @Route("/users")
   */

  public function getUsersPerpage(UserRepository $userRepository, PaginatorInterface $paginator, Request $request, SerializerInterface $serializer){
      $page = $_GET['page'];
      $itemsPerPage = $_GET['limit'];
      $data = $userRepository->findAll();

      $pagination = $paginator->paginate(
      $data,
      $request->query->getInt('page', $page), /*page number*/
      $itemsPerPage /*limit per page*/
      
      ); 
     
    $responseItems = array();
    $responseItems['users'] = $pagination->getItems();
    $responseItems['paging'] = array(
            'totalCount' => $pagination->getTotalItemCount(),
            'currentPage' => $pagination->getCurrentPageNumber(),
            'itemsLimit'=> $pagination->getItemNumberPerPage()
    );

    $jsonPagination = $serializer->serialize($responseItems, 'json'); 
    
    $response = new Response();
    $response->setContent($jsonPagination);
    $response->setStatusCode(Response::HTTP_OK);
    $response->headers->add(['Content-Type' => 'application/json']);
    return $response;
  }

}

